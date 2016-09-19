module Ccd
  class SmokingStatusObservation < Cda::Observation
    include Ccd::SmokingStatusObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('smoking_status_observation.rb')
  end
end
