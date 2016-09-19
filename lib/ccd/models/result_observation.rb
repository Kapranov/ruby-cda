module Ccd
  class ResultObservation < Cda::Observation
    include Ccd::ResultObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('result_observation.rb')
  end
end
