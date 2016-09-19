module Ccd
  class USRealmPatientNamePTNUSFIELDED < Cda::PN
    include Ccd::USRealmPatientNamePTNUSFIELDEDTemplate

    def self.template_type
      "name"
    end

    Ccd.load_extension('us_realm_patient_name_ptnusfielded.rb')
  end
end
