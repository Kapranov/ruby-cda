module Ccd
  class FamilyHistoryOrganizer < Cda::Organizer
    include Ccd::FamilyHistoryOrganizerTemplate

    def self.template_type
      "organizer"
    end

    Ccd.load_extension('family_history_organizer.rb')
  end
end
