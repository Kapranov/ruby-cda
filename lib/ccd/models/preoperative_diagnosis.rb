module Ccd
  class PreoperativeDiagnosis < Cda::Act
    include Ccd::PreoperativeDiagnosisTemplate

    def self.template_type
      "act"
    end

    Ccd.load_extension('preoperative_diagnosis.rb')
  end
end
