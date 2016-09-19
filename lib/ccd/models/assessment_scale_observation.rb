module Ccd
  class AssessmentScaleObservation < Cda::Observation
    include Ccd::AssessmentScaleObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('assessment_scale_observation.rb')
  end
end
