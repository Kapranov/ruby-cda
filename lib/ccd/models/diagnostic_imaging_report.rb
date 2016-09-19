module Ccd
  class DiagnosticImagingReport < Cda::ClinicalDocument
    include Ccd::DiagnosticImagingReportTemplate

    def self.template_type
      "ClinicalDocument"
    end

    Ccd.load_extension('diagnostic_imaging_report.rb')
  end
end
