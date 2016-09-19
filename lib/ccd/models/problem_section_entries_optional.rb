module Ccd
  class ProblemSectionEntriesOptional < Cda::Section
    include Ccd::ProblemSectionEntriesOptionalTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('problem_section_entries_optional.rb')
  end
end
