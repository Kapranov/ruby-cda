module Ccd
  class PostoperativeDiagnosisSection < Cda::Section
    include Ccd::PostoperativeDiagnosisSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('postoperative_diagnosis_section.rb')
  end
end
