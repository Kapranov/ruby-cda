module Ccd
  class HospitalDischargeInstructionsSectio < Cda::Section
    include Ccd::HospitalDischargeInstructionsSectioTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('hospital_discharge_instructions_sectio.rb')
  end
end
