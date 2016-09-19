module Ccd
  class CognitiveStatusProblemObservation < Cda::Observation
    include Ccd::CognitiveStatusProblemObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('cognitive_status_problem_observation.rb')
  end
end
