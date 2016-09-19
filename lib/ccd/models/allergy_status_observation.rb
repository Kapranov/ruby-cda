module Ccd
  class AllergyStatusObservation < Cda::Observation
    include Ccd::AllergyStatusObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('allergy_status_observation.rb')
  end
end
