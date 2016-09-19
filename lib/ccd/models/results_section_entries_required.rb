module Ccd
  class ResultsSectionEntriesRequired < Cda::Section
    include Ccd::ResultsSectionEntriesRequiredTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('results_section_entries_required.rb')
  end
end
