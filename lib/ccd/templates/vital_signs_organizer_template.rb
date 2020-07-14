module Ccd::VitalSignsOrganizerTemplate
  def self.included(base)
    base.class_eval do
      extend ::Ccd::Dsl
      
      # SHALL contain exactly one [1..1] @classCode="CLUSTER" CLUSTER (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7279).
      constraint 'class_code', {:cardinality=>"1..1", :value=>"CLUSTER"}
      
      # SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7280).
      constraint 'mood_code', {:cardinality=>"1..1", :value=>"EVN"}
      
      # SHALL contain exactly one [1..1] templateId (CONF:7281) such that it
      # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.26" (CONF:10528).
      constraint 'template_id', {:cardinality=>"1..1", :value=>{:root=>"2.16.840.1.113883.10.20.22.4.26"}}
      constraint 'template_id', {:cardinality=>"1..1", :value=>{:root=>"2.16.840.1.113883.10.20.22.4.26", :extension=>"2015-08-01"}}
      
      # SHALL contain at least one [1..*] id (CONF:7282).
      constraint 'id', {:cardinality=>"1..*"}
      
      # SHALL contain exactly one [1..1] code (CONF:19176).
      constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"46680005", :display_name=>"Vital signs", :code_system=>"2.16.840.1.113883.6.96"}}
      constraint 'code.translation', {:cardinality=>"1..1", :value=>{:code=>"74728-7", :display_name=>"Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel - HL7.CCDAr1.1", :code_system=>"2.16.840.1.113883.6.1"}}
      
      # SHALL contain exactly one [1..1] statusCode (CONF:7284).
      constraint 'status_code', {:cardinality=>"1..1", :value=>{:code=>"completed", :display_name=>"Completed", :code_system=>"2.16.840.1.113883.5.14"}}
      
      # The effectiveTime represents clinically effective time of the measurement, which is most likely when the measurement was performed (e.g., a BP measurement).
      # SHALL contain exactly one [1..1] effectiveTime (CONF:7288).
      constraint 'effective_time', {:cardinality=>"1..1"}
      
      # SHALL contain at least one [1..*] component (CONF:7285) such that it
      constraint 'component', {:cardinality=>"1..*"}
      
      # SHALL contain exactly one [1..1] Vital Sign Observation (templateId:2.16.840.1.113883.10.20.22.4.27) (CONF:15946).
      constraint 'component.observation', {:cardinality=>"1..1"}
    end
  end
end
