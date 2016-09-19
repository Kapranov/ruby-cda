module Ccd
  class AdvanceDirectivesSectionEntriesOpt < Cda::Section
    include Ccd::AdvanceDirectivesSectionEntriesOptTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('advance_directives_section_entries_opt.rb')
  end
end
