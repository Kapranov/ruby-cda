module Ccd
  class HospitalAdmissionMedicationsSection < Cda::Section
    include Ccd::HospitalAdmissionMedicationsSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('hospital_admission_medications_section.rb')
  end
end
