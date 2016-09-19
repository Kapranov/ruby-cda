module Ccd
  class PreoperativeDiagnosisSection < Cda::Section
    include Ccd::PreoperativeDiagnosisSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('preoperative_diagnosis_section.rb')
  end
end
