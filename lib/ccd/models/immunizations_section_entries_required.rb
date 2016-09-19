module Ccd
  class ImmunizationsSectionEntriesRequired < Cda::Section
    include Ccd::ImmunizationsSectionEntriesRequiredTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('immunizations_section_entries_required.rb')
  end
end
