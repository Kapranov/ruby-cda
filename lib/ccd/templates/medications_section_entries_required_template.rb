module Ccd::MedicationsSectionEntriesRequiredTemplate
  def self.included(base)
    base.class_eval do
      extend ::Ccd::Dsl
      
      # SHALL contain exactly one [1..1] templateId (CONF:7568) such that it
      # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.1.1" (CONF:10433).
      constraint 'template_id', {:cardinality=>"1..1", :value=>{:root=>"2.16.840.1.113883.10.20.22.2.1.1"}}
      constraint 'template_id', {:cardinality=>"1..1", :value=>{:root=>"2.16.840.1.113883.10.20.22.2.1.1", :extension=>"2014-06-09"}}

      # SHALL contain exactly one [1..1] code (CONF:15387).
      constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"10160-0", :display_name=>"History of medication use", :code_system=>"2.16.840.1.113883.6.1"}}
      
      # SHALL contain exactly one [1..1] title (CONF:7570).
      constraint 'title', {:cardinality=>"1..1"}
      
      # SHALL contain exactly one [1..1] text (CONF:7571).
      constraint 'text', {:cardinality=>"1..1"}
      
      # SHALL contain at least one [1..*] entry (CONF:7572) such that it
      constraint 'entry', {:cardinality=>"1..*"}
      
      # SHALL contain exactly one [1..1] Medication Activity (templateId:2.16.840.1.113883.10.20.22.4.16) (CONF:15500).
      constraint 'entry.substance_administration', {:cardinality=>"1..1"}
    end
  end
end
