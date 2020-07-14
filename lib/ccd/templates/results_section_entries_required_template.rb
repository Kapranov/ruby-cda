module Ccd::ResultsSectionEntriesRequiredTemplate
  def self.included(base)
    base.class_eval do
      extend ::Ccd::Dsl
      
      # SHALL contain exactly one [1..1] templateId (CONF:7108) such that it
      # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.3.1" (CONF:9137).
      constraint 'template_id', {:cardinality=>"1..1", :value=>{:root=>"2.16.840.1.113883.10.20.22.2.3.1"}}
      constraint 'template_id', {:cardinality=>"1..1", :value=>{:root=>"2.16.840.1.113883.10.20.22.2.3.1", :extension=>"2015-08-01"}}
      
      # SHALL contain exactly one [1..1] code (CONF:15433).
      constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"30954-2", :display_name=>"Relevant diagnostic tests and/or laboratory data", :code_system=>"2.16.840.1.113883.6.1"}}
      
      # SHALL contain exactly one [1..1] title (CONF:8892).
      constraint 'title', {:cardinality=>"1..1"}
      
      # SHALL contain exactly one [1..1] text (CONF:7111).
      constraint 'text', {:cardinality=>"1..1"}
      
      # SHALL contain at least one [1..*] entry (CONF:7112) such that it
      constraint 'entry', {:cardinality=>"1..*"}
      
      # SHALL contain exactly one [1..1] Result Organizer (templateId:2.16.840.1.113883.10.20.22.4.1) (CONF:15516).
      constraint 'entry.organizer', {:cardinality=>"1..1"}
    end
  end
end
