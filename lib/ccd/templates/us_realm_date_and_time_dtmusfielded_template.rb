module Ccd::USRealmDateAndTimeDTMUSFIELDEDTemplate
  def self.included(base)
    base.class_eval do
      extend ::Ccd::Dsl
    end
  end
end
