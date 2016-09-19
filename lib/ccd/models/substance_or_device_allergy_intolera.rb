module Ccd
  class SubstanceOrDeviceAllergyIntolera < Cda::Observation
    include Ccd::SubstanceOrDeviceAllergyIntoleraTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('substance_or_device_allergy_intolera.rb')
  end
end
