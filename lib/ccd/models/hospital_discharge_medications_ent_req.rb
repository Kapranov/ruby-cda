module Ccd
  class HospitalDischargeMedicationsEntReq < Cda::Section
    include Ccd::HospitalDischargeMedicationsEntReqTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('hospital_discharge_medications_ent_req.rb')
  end
end
