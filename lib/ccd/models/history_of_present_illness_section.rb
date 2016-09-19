module Ccd
  class HistoryOfPresentIllnessSection < Cda::Section
    include Ccd::HistoryOfPresentIllnessSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('history_of_present_illness_section.rb')
  end
end
