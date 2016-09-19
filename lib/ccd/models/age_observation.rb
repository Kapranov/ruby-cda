module Ccd
  class AgeObservation < Cda::Observation
    include Ccd::AgeObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('age_observation.rb')
  end
end
