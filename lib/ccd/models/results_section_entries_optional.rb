module Ccd
  class ResultsSectionEntriesOptional < Cda::Section
    include Ccd::ResultsSectionEntriesOptionalTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('results_section_entries_optional.rb')
  end
end
