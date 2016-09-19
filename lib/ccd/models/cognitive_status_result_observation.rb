module Ccd
  class CognitiveStatusResultObservation < Cda::Observation
    include Ccd::CognitiveStatusResultObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('cognitive_status_result_observation.rb')
  end
end
