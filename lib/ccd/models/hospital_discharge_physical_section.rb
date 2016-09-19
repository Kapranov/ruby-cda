module Ccd
  class HospitalDischargePhysicalSection < Cda::Section
    include Ccd::HospitalDischargePhysicalSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('hospital_discharge_physical_section.rb')
  end
end
