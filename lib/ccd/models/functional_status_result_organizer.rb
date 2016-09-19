module Ccd
  class FunctionalStatusResultOrganizer < Cda::Organizer
    include Ccd::FunctionalStatusResultOrganizerTemplate

    def self.template_type
      "organizer"
    end

    Ccd.load_extension('functional_status_result_organizer.rb')
  end
end
