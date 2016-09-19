module Ccd
  class HistoryAndPhysical < Cda::ClinicalDocument
    include Ccd::HistoryAndPhysicalTemplate

    def self.template_type
      "ClinicalDocument"
    end

    Ccd.load_extension('history_and_physical.rb')
  end
end
