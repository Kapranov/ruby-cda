module Ccd
  class ImmunizationRefusalReason < Cda::Observation
    include Ccd::ImmunizationRefusalReasonTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('immunization_refusal_reason.rb')
  end
end
