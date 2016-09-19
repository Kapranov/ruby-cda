module Ccd
  class ProcedureIndicationsSection < Cda::Section
    include Ccd::ProcedureIndicationsSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('procedure_indications_section.rb')
  end
end
