module Ccd::MedicationInformationTemplate
  def self.included(base)
    base.class_eval do
      extend ::Ccd::Dsl
      
      # SHALL contain exactly one [1..1] @classCode="MANU" (CodeSystem: RoleClass 2.16.840.1.113883.5.110 STATIC) (CONF:7408).
      constraint 'class_code', {:cardinality=>"1..1", :value=>"MANU"}
      
      # SHALL contain exactly one [1..1] templateId (CONF:7409) such that it
      # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.23" (CONF:10506).
      constraint 'template_id', {:cardinality=>"1..1", :value=>{:root=>"2.16.840.1.113883.10.20.22.4.23"}}
      constraint 'template_id', {:cardinality=>"1..1", :value=>{:root=>"2.16.840.1.113883.10.20.22.4.23", :extension=>"2014-06-09"}}
      
      # SHALL contain exactly one [1..1] manufacturedMaterial (CONF:7411).
      constraint 'manufactured_material', {:cardinality=>"1..1"}
      
      # This manufacturedMaterial SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet Medication Clinical Drug Name Value Set 2.16.840.1.113883.3.88.12.80.17 DYNAMIC (CONF:7412).
      constraint 'manufactured_material.code', {:cardinality=>"1..1"}
    end
  end
end
