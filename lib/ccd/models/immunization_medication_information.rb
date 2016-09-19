module Ccd
  class ImmunizationMedicationInformation < Cda::ManufacturedProduct
    include Ccd::ImmunizationMedicationInformationTemplate

    def self.template_type
      "manufacturedProduct"
    end

    Ccd.load_extension('immunization_medication_information.rb')
  end
end
