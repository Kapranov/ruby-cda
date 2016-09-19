module Ccd
  class DischargeMedication < Cda::Act
    include Ccd::DischargeMedicationTemplate

    def self.template_type
      "act"
    end

    Ccd.load_extension('discharge_medication.rb')
  end
end
