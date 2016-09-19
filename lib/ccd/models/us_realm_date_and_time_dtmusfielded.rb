module Ccd
  class USRealmDateAndTimeDTMUSFIELDED < Cda::TS
    include Ccd::USRealmDateAndTimeDTMUSFIELDEDTemplate

    def self.template_type
      "effectiveTime"
    end

    Ccd.load_extension('us_realm_date_and_time_dtmusfielded.rb')
  end
end
