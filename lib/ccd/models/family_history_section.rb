module Ccd
  class FamilyHistorySection < Cda::Section
    include Ccd::FamilyHistorySectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('family_history_section.rb')
  end
end
