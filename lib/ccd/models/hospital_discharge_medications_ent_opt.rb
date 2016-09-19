module Ccd
  class HospitalDischargeMedicationsEntOpt < Cda::Section
    include Ccd::HospitalDischargeMedicationsEntOptTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('hospital_discharge_medications_ent_opt.rb')
  end
end
