module Ccd::USRealmPatientNamePTNUSFIELDEDTemplate
  def self.included(base)
    base.class_eval do
      extend ::Ccd::Dsl
      
      # SHALL contain exactly one [1..1] family (CONF:7159).
      constraint 'family', {:cardinality=>"1..1"}
      
      # SHALL contain at least one [1..*] given (CONF:7157).
      constraint 'given', {:cardinality=>"1..*"}
    end
  end
end
