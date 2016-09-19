module Ccd
  class DeceasedObservation < Cda::Observation
    include Ccd::DeceasedObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('deceased_observation.rb')
  end
end
