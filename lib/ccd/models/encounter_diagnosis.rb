module Ccd
  class EncounterDiagnosis < Cda::Act
    include Ccd::EncounterDiagnosisTemplate

    def self.template_type
      "act"
    end

    Ccd.load_extension('encounter_diagnosis.rb')
  end
end
