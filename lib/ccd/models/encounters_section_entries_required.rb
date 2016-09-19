module Ccd
  class EncountersSectionEntriesRequired < Cda::Section
    include Ccd::EncountersSectionEntriesRequiredTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('encounters_section_entries_required.rb')
  end
end
