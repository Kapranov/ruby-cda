module Ccd
  class USRealmHeader < Cda::ClinicalDocument
    include Ccd::USRealmHeaderTemplate

    def self.template_type
      "ClinicalDocument"
    end

    Ccd.load_extension('us_realm_header.rb')
  end
end
