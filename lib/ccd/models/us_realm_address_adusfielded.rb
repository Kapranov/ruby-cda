module Ccd
  class USRealmAddressADUSFIELDED < Cda::AD
    include Ccd::USRealmAddressADUSFIELDEDTemplate

    def self.template_type
      "addr"
    end

    Ccd.load_extension('us_realm_address_adusfielded.rb')
  end
end
