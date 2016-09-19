module Ccd
  class ReactionObservation < Cda::Observation
    include Ccd::ReactionObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('reaction_observation.rb')
  end
end
