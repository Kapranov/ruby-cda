require 'active_support/core_ext'

module Ccd
  module Dsl
    class CardinalityError < Exception
      def initialize(obj, name)
        @object = obj
        @name = name
      end

      def to_s
        @name
      end
    end

    def constraint(*args)
      add_constraint(*args)
    end

    def dump(path)
      File.open(File.join(path, "#{self.name.underscore}.yml"), 'w') do |f|
        f.puts defaults.to_yaml
      end
    end

    def validate!(object)
      (@cardinalities || {}).each do |name, card|
        case card
          when '1..1'
            value = name.split('.').reduce(object) { |obj, chunk| obj.__send__(chunk) }
            raise CardinalityError.new(object, name) unless value
        end
      end
    end
  end
end
