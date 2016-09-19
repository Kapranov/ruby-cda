module Ccd
  class BoundaryObservation < Cda::Observation
    include Ccd::BoundaryObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('boundary_observation.rb')
  end
end
