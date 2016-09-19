module Ccd
  class USRealmDateAndTimeDTUSFIELDEDDE < Cda::IVL_TS
    include Ccd::USRealmDateAndTimeDTUSFIELDEDDETemplate

    def self.template_type
      "IVL_TS"
    end

    Ccd.load_extension('us_realm_date_and_time_dtusfieldedde.rb')
  end
end
