module Ccd
  class SeverityObservation < Cda::Observation
    include Ccd::SeverityObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('severity_observation.rb')
  end
end
