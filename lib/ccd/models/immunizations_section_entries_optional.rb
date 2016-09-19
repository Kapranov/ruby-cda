module Ccd
  class ImmunizationsSectionEntriesOptional < Cda::Section
    include Ccd::ImmunizationsSectionEntriesOptionalTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('immunizations_section_entries_optional.rb')
  end
end
