require 'active_support/core_ext/class/attribute'
require 'active_support/concern'

module Cda
  module Constraints
    extend ActiveSupport::Concern

    included do
      class_attribute :constraints, instance_writer: false

      self.constraints = {}
    end

    def defaults
      self.class.defaults
    end

    module ClassMethods
      def add_constraint(on, new_constraint = {})
        constraints = self.constraints[on] || []
        return if constraints.find { |c| constraint_covered_by(new_constraint, c) }
        constraints = constraints.reject { |c| constraint_covered_by(c, new_constraint) }
        constraints << new_constraint
        self.constraints = self.constraints.merge(on => constraints)
      end

      def defaults
        @defaults ||= self.constraints.reduce({}) do |acc, (path, constraints)|
          values = constraints.
            select { |c| c[:cardinality] == '1..1' }.
            map { |c| c[:value].presence }.
            compact
          if values.present?
            normalized_value = values.length > 1 ? values : values.first
            default_value = Utility.inference(path.split('.'), normalized_value, self)
            Cda::Utility.merge_json(acc, default_value)
          else
            acc
          end
        end
      end

      private

      def constraint_covered_by(constraint, other_constraint)
        constraint == other_constraint.slice(*constraint.keys)
      end
    end
  end
end