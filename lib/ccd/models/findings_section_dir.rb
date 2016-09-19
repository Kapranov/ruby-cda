module Ccd
  class FindingsSectionDIR < Cda::Section
    include Ccd::FindingsSectionDIRTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('findings_section_dir.rb')
  end
end
