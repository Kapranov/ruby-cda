module Ccd
  class ResultOrganizer < Cda::Organizer
    include Ccd::ResultOrganizerTemplate

    def self.template_type
      "organizer"
    end

    Ccd.load_extension('result_organizer.rb')
  end
end
