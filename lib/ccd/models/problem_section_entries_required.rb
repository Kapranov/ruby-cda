module Ccd
  class ProblemSectionEntriesRequired < Cda::Section
    include Ccd::ProblemSectionEntriesRequiredTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('problem_section_entries_required.rb')
  end
end
