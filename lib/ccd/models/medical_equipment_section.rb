module Ccd
  class MedicalEquipmentSection < Cda::Section
    include Ccd::MedicalEquipmentSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('medical_equipment_section.rb')
  end
end
