module Ccd
  class ProcedureDispositionSection < Cda::Section
    include Ccd::ProcedureDispositionSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('procedure_disposition_section.rb')
  end
end
