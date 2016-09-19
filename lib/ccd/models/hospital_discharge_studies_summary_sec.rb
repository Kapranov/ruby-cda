module Ccd
  class HospitalDischargeStudiesSummarySec < Cda::Section
    include Ccd::HospitalDischargeStudiesSummarySecTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('hospital_discharge_studies_summary_sec.rb')
  end
end
