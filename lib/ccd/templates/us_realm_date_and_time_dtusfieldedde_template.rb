module Ccd::USRealmDateAndTimeDTUSFIELDEDDETemplate
  def self.included(base)
    base.class_eval do
      extend ::Ccd::Dsl
      
      # 	SHALL be precise to the day
      constraint '', {:cardinality=>"1..1"}
    end
  end
end
