module Ccd
  class FunctionalStatusProblemObservation < Cda::Observation
    include Ccd::FunctionalStatusProblemObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('functional_status_problem_observation.rb')
  end
end
