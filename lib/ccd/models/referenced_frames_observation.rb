module Ccd
  class ReferencedFramesObservation < Cda::Observation
    include Ccd::ReferencedFramesObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('referenced_frames_observation.rb')
  end
end
