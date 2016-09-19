module Ccd
  class PurposeOfReferenceObservation < Cda::Observation
    include Ccd::PurposeOfReferenceObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('purpose_of_reference_observation.rb')
  end
end
