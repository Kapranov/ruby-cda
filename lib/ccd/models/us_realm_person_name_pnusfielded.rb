module Ccd
  class USRealmPersonNamePNUSFIELDED < Cda::PN
    include Ccd::USRealmPersonNamePNUSFIELDEDTemplate

    def self.template_type
      "name"
    end

    Ccd.load_extension('us_realm_person_name_pnusfielded.rb')
  end
end
