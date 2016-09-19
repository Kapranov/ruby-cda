module Ccd
  class EncountersSectionEntriesOptional < Cda::Section
    include Ccd::EncountersSectionEntriesOptionalTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('encounters_section_entries_optional.rb')
  end
end
