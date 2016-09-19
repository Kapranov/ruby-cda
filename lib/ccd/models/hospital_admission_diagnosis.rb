module Ccd
  class HospitalAdmissionDiagnosis < Cda::Act
    include Ccd::HospitalAdmissionDiagnosisTemplate

    def self.template_type
      "act"
    end

    Ccd.load_extension('hospital_admission_diagnosis.rb')
  end
end
