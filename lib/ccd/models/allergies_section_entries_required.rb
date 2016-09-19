module Ccd
  class AllergiesSectionEntriesRequired < Cda::Section
    include Ccd::AllergiesSectionEntriesRequiredTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('allergies_section_entries_required.rb')
  end
end
