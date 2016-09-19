module Ccd
  class DischargeSummary < Cda::ClinicalDocument
    include Ccd::DischargeSummaryTemplate

    def self.template_type
      "ClinicalDocument"
    end

    Ccd.load_extension('discharge_summary.rb')
  end
end
