module Ccd
  class HealthStatusObservation < Cda::Observation
    include Ccd::HealthStatusObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('health_status_observation.rb')
  end
end
