module Ccd
  class ProcedureImplantsSection < Cda::Section
    include Ccd::ProcedureImplantsSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('procedure_implants_section.rb')
  end
end
