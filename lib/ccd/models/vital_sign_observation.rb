module Ccd
  class VitalSignObservation < Cda::Observation
    include Ccd::VitalSignObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('vital_sign_observation.rb')
  end
end
