module Ccd
  class HistoryOfPastIllnessSection < Cda::Section
    include Ccd::HistoryOfPastIllnessSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('history_of_past_illness_section.rb')
  end
end
