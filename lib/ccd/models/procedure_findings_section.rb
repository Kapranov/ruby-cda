module Ccd
  class ProcedureFindingsSection < Cda::Section
    include Ccd::ProcedureFindingsSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('procedure_findings_section.rb')
  end
end
