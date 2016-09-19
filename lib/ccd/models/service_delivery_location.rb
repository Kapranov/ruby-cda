module Ccd
  class ServiceDeliveryLocation < Cda::ParticipantRole
    include Ccd::ServiceDeliveryLocationTemplate

    def self.template_type
      "participantRole"
    end

    Ccd.load_extension('service_delivery_location.rb')
  end
end
