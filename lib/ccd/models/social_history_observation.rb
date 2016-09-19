module Ccd
  class SocialHistoryObservation < Cda::Observation
    include Ccd::SocialHistoryObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('social_history_observation.rb')
  end
end
