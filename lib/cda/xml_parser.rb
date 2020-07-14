module Cda
  class XmlParser
    attr_accessor :registry
    attr :xml

    def initialize(xml, registry)
      @registry = registry
      @xml = xml
    end

    def parse(model_class = nil)
      instantiate_from_element(model_class || resolve_class)
    end

    def within_each(xpath_or_nodes, &block)
      nodes = xpath_or_nodes.is_a?(String) ? xml.xpath(xpath_or_nodes) : xpath_or_nodes
      nodes.each do |node|
        within(node, &block)
      end
    end

    def within(*args)
      xpath_or_node, xpath = args
      node = xpath_or_node.is_a?(String) ? xml.xpath(xpath_or_node) : xpath_or_node
      node = node.xpath(xpath) if xpath
      saved_node, @xml = @xml, node
      yield if @xml.present?
    ensure
      @xml = saved_node
    end

    def value_of(node_or_xpath, opts = {})
      if node_or_xpath.is_a?(String)
        node_set = xml.xpath(node_or_xpath)
        return if node_set.blank?
        if node_set.length > 1 && !Ccd.config[:forgive_multiple_nodes_by_using_first]
          raise "Expected only one node as result of #{node_or_xpath}, but #{node_set.inspect}"
        end
        node = node_set.first
      else
        node = node_or_xpath
      end

      case opts[:as]
        when :numeric
          parse_numeric(node)
        when :boolean
          parse_boolean(node)
        when :datetime, :date
          parse_time(node)
        when :coded_value
          parse_coded_value(node)
        when :time_interval
          parse_time_interval(node)
        when :value_with_unit
          parse_value_with_unit(node)
        else
          node.text if node.present?
      end
    end

    def values_of(xpath, opts = {})
      xml.xpath(xpath).map { |node| value_of(node, opts) }
    end

    private

    def parse_attribute(instance, attribute)
      value = value_of("@#{attribute.fully_qualified_name}")
      attribute.set_value(instance, coerce_value(value, attribute.model_class))
    end

    def parse_element(instance, element)
      if element.collection?
        parse_elements_collection(instance, element)
      else
        parse_single_element(instance, element)
      end
    end

    def parse_single_element(instance, element)
      unwrap_node_if_required(element) do
        within element.element_name do
          element.set_value(instance, parse_value(element))
        end
      end
    end

    def parse_elements_collection(instance, element)
      items = element.new_instance
      within_each [element.wrapper_element_name, element.element_name].compact.join('/') do
        items << parse_value(element)
      end
      element.set_value(instance, items)
    end

    def parse_value(element)
      if (model_class = resolve_class)
        instantiate_from_element(model_class)
      elsif (type = value_of('@type'))
        instantiate_from_element("Cda::#{type}".constantize)
      elsif element.complex?
        instantiate_from_element(element.model_class)
      else
        coerce_value(value_of('text()'), element.model_class)
      end
    end

    def coerce_value(value, type)
      if type <= Date
        Cda::ValueCoercer.string_to_time(value)
      else
        value
      end
    end

    def parse_text(instance, text_element)
      text_element.set_value(instance, values_of('text()').join)
    end

    def instantiate_from_element(model_class)
      meta_info = Cda::MetaInfo.for(model_class)
      instance = model_class.new
      parse_text(instance, meta_info.text) if meta_info.has_text?
      meta_info.attributes.each { |attr| parse_attribute(instance, attr) }
      meta_info.elements.each { |element| parse_element(instance, element) }
      instance
    end

    def resolve_class
      template_id = value_of 'templateId/@root'
      template_id.presence && registry[template_id]
    end

    def unwrap_node_if_required(element)
      if element.wrapper_element_name
        within(element.wrapper_element_name) do
          yield
        end
      else
        yield
      end
    end
  end
end
