module Ccd
  class MedicalGeneralHistorySection < Cda::Section
    include Ccd::MedicalGeneralHistorySectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('medical_general_history_section.rb')
  end
end
