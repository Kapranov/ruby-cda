module Ccd
  class PostprocedureDiagnosis < Cda::Act
    include Ccd::PostprocedureDiagnosisTemplate

    def self.template_type
      "act"
    end

    Ccd.load_extension('postprocedure_diagnosis.rb')
  end
end
