module Ccd
  class PlannedProcedureSection < Cda::Section
    include Ccd::PlannedProcedureSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('planned_procedure_section.rb')
  end
end
