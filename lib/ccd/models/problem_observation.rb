module Ccd
  class ProblemObservation < Cda::Observation
    include Ccd::ProblemObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('problem_observation.rb')
  end
end
