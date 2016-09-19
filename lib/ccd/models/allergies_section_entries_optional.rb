module Ccd
  class AllergiesSectionEntriesOptional < Cda::Section
    include Ccd::AllergiesSectionEntriesOptionalTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('allergies_section_entries_optional.rb')
  end
end
