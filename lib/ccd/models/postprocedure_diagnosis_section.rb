module Ccd
  class PostprocedureDiagnosisSection < Cda::Section
    include Ccd::PostprocedureDiagnosisSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('postprocedure_diagnosis_section.rb')
  end
end
