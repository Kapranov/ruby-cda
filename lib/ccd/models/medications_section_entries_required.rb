module Ccd
  class MedicationsSectionEntriesRequired < Cda::Section
    include Ccd::MedicationsSectionEntriesRequiredTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('medications_section_entries_required.rb')
  end
end
