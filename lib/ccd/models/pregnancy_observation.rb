module Ccd
  class PregnancyObservation < Cda::Observation
    include Ccd::PregnancyObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('pregnancy_observation.rb')
  end
end
