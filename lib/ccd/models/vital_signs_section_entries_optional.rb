module Ccd
  class VitalSignsSectionEntriesOptional < Cda::Section
    include Ccd::VitalSignsSectionEntriesOptionalTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('vital_signs_section_entries_optional.rb')
  end
end
