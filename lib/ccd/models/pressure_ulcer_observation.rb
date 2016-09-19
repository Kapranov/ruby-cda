module Ccd
  class PressureUlcerObservation < Cda::Observation
    include Ccd::PressureUlcerObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('pressure_ulcer_observation.rb')
  end
end
