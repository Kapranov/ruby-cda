module Ccd
  class AdvanceDirectiveObservation < Cda::Observation
    include Ccd::AdvanceDirectiveObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('advance_directive_observation.rb')
  end
end
