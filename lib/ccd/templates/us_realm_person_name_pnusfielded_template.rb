module Ccd::USRealmPersonNamePNUSFIELDEDTemplate
  def self.included(base)
    base.class_eval do
      extend ::Ccd::Dsl
    end
  end
end
