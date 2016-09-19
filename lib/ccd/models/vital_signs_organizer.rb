module Ccd
  class VitalSignsOrganizer < Cda::Organizer
    include Ccd::VitalSignsOrganizerTemplate

    def self.template_type
      "organizer"
    end

    Ccd.load_extension('vital_signs_organizer.rb')
  end
end
