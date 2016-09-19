module Ccd
  class AllergyIntoleranceObservation < Cda::Observation
    include Ccd::AllergyIntoleranceObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('allergy_intolerance_observation.rb')
  end
end
