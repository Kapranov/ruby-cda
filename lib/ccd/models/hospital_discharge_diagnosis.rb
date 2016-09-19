module Ccd
  class HospitalDischargeDiagnosis < Cda::Act
    include Ccd::HospitalDischargeDiagnosisTemplate

    def self.template_type
      "act"
    end

    Ccd.load_extension('hospital_discharge_diagnosis.rb')
  end
end
