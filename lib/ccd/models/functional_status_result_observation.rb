module Ccd
  class FunctionalStatusResultObservation < Cda::Observation
    include Ccd::FunctionalStatusResultObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('functional_status_result_observation.rb')
  end
end
