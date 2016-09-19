module Ccd
  class TextObservation < Cda::Observation
    include Ccd::TextObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('text_observation.rb')
  end
end
