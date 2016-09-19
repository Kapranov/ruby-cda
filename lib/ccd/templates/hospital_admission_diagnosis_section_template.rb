module Ccd::HospitalAdmissionDiagnosisSectionTemplate
  def self.included(base)
    base.class_eval do
      extend ::Ccd::Dsl
      
      # SHALL contain exactly one [1..1] templateId (CONF:9930) such that it
      constraint 'template_id', {:cardinality=>"1..1"}
      
      # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.43" (CONF:10391).
      constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.43"}
      
      # SHALL contain exactly one [1..1] code (CONF:15479).
      constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"46241-6", :display_name=>"Hospital Admission Diagnosis", :code_system=>"2.16.840.1.113883.6.1"}}
      
      # SHALL contain exactly one [1..1] title (CONF:9932).
      constraint 'title', {:cardinality=>"1..1"}
      
      # SHALL contain exactly one [1..1] text (CONF:9933).
      constraint 'text', {:cardinality=>"1..1"}
    end
  end
end
