module Ccd
  class FamilyHistoryObservation < Cda::Observation
    include Ccd::FamilyHistoryObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('family_history_observation.rb')
  end
end
