module Ccd::USRealmAddressADUSFIELDEDTemplate
  def self.included(base)
    base.class_eval do
      extend ::Ccd::Dsl
      
      # SHALL contain exactly one [1..1] city (CONF:7292).
      constraint 'city', {:cardinality=>"1..1"}
      
      # SHALL contain at least one and not more than 4 streetAddressLine (CONF:7291).
      constraint 'street_address_line', {:cardinality=>"1..4"}
    end
  end
end
