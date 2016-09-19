module Ccd
  class ProcedureDescriptionSection < Cda::Section
    include Ccd::ProcedureDescriptionSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('procedure_description_section.rb')
  end
end
