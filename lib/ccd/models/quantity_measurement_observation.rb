module Ccd
  class QuantityMeasurementObservation < Cda::Observation
    include Ccd::QuantityMeasurementObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('quantity_measurement_observation.rb')
  end
end
