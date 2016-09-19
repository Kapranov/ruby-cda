module Ccd
  class MedicationInformation < Cda::ManufacturedProduct
    include Ccd::MedicationInformationTemplate

    def self.template_type
      "manufacturedProduct"
    end

    Ccd.load_extension('medication_information.rb')
  end
end
