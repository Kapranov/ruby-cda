module Ccd
  class AssessmentScaleSupportingObservati < Cda::Observation
    include Ccd::AssessmentScaleSupportingObservatiTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('assessment_scale_supporting_observati.rb')
  end
end
