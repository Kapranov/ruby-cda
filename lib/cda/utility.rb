module Cda
  module Utility
    extend self

    def inference(path, value, context)
      # puts if self == context
      # puts "inference(#{path}, #{value}, #{context})"
      return value if path.empty?

      name = path.shift

      if path.empty? && value.is_a?(Hash) && value.key?(:_type)
        klass = value[:_type].constantize
        is_collection = false
      else
        klass = attribute_class(context, name)
        is_collection = collection?(context, name)
      end

      value = inference(path, value, klass)

      if is_collection
        {name => (value.is_a?(Array) ? value : [value])}
      elsif value.is_a?(Array)
        value.map { |val| {name => val} }
      else
        {name => value}
      end
    end

    def attribute_class(context, attribute)
      attribute_decl = context.attribute_set[attribute.to_sym]

      type = attribute_decl.respond_to?(:member_type) ? attribute_decl.member_type : attribute_decl.type
      type.primitive
    end

    def collection?(context, attribute)
      annotations(context, attribute)[:multiple]
    end

    def annotations(context, attribute)
      context.attribute_set[attribute.to_sym].annotations
    end

    def merge_json(x, y)
      hash_to_object object_to_hash(x).deep_merge(object_to_hash(y))
    end

    def hash_to_object(hash)
      return hash unless Hash === hash
      is_array = !hash.empty? && hash.keys.all? { |x| x.is_a?(Integer) }
      acc = is_array ? [] : {}
      hash.reduce(acc) { |acc, (k, v)| acc[k] = hash_to_object(v); acc }
    end

    def object_to_hash(object)
      case object
        when Array
          if object.size == 1
            value = object_to_hash(object[0])
            Hash.new { |h, k| k.is_a?(Integer) ? h[k] = value : nil }.merge(0 => value)
          else
            object.each_with_index.reduce({}) do |acc, (elem, index)|
              acc[index] = object_to_hash(elem)
              acc
            end
          end
        when Hash
          object.reduce({}) do |acc, (key, value)|
            acc[key] = object_to_hash(value)
            acc
          end
        else
          object
      end
    end

    def mk_class(attrs)
      return attrs unless attrs.is_a?(Hash)

      res = attrs.reduce({}) do |acc, (k, v)|
        acc[k.to_sym] = case v
                          when Hash
                            mk_class(v)
                          when Array
                            v.map { |vv| mk_class(vv) }
                          else
                            v
                        end
        acc
      end

      if res.key?(:_type)
        res.delete(:_type).constantize.new res
      else
        res
      end
    end
  end
end