module Ccd
  class MedicationsSectionEntriesOptional < Cda::Section
    include Ccd::MedicationsSectionEntriesOptionalTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('medications_section_entries_optional.rb')
  end
end
