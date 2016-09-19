module Ccd
  class FamilyHistoryDeathObservation < Cda::Observation
    include Ccd::FamilyHistoryDeathObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('family_history_death_observation.rb')
  end
end
