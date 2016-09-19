module Ccd
  class CaregiverCharacteristics < Cda::Observation
    include Ccd::CaregiverCharacteristicsTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('caregiver_characteristics.rb')
  end
end
