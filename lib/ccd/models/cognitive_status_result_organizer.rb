module Ccd
  class CognitiveStatusResultOrganizer < Cda::Organizer
    include Ccd::CognitiveStatusResultOrganizerTemplate

    def self.template_type
      "organizer"
    end

    Ccd.load_extension('cognitive_status_result_organizer.rb')
  end
end
