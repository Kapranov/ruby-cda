module Ccd
  class HospitalAdmissionDiagnosisSection < Cda::Section
    include Ccd::HospitalAdmissionDiagnosisSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('hospital_admission_diagnosis_section.rb')
  end
end
