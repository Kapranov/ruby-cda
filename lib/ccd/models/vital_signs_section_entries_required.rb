module Ccd
  class VitalSignsSectionEntriesRequired < Cda::Section
    include Ccd::VitalSignsSectionEntriesRequiredTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('vital_signs_section_entries_required.rb')
  end
end
