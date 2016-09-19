module Ccd
  class AdmissionMedication < Cda::Act
    include Ccd::AdmissionMedicationTemplate

    def self.template_type
      "act"
    end

    Ccd.load_extension('admission_medication.rb')
  end
end
