module Ccd
  class DrugVehicle < Cda::ParticipantRole
    include Ccd::DrugVehicleTemplate

    def self.template_type
      "participantRole"
    end

    Ccd.load_extension('drug_vehicle.rb')
  end
end
