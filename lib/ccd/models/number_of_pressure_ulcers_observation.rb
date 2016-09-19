module Ccd
  class NumberOfPressureUlcersObservation < Cda::Observation
    include Ccd::NumberOfPressureUlcersObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('number_of_pressure_ulcers_observation.rb')
  end
end
