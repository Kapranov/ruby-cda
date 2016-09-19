module Ccd
  class MedicationUseNoneKnownDeprecated < Cda::Observation
    include Ccd::MedicationUseNoneKnownDeprecatedTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('medication_use_none_known_deprecated.rb')
  end
end
