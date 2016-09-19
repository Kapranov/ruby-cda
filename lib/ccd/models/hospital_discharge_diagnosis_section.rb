module Ccd
  class HospitalDischargeDiagnosisSection < Cda::Section
    include Ccd::HospitalDischargeDiagnosisSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('hospital_discharge_diagnosis_section.rb')
  end
end
