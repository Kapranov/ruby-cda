module Ccd
  class ProceduresSectionEntriesRequired < Cda::Section
    include Ccd::ProceduresSectionEntriesRequiredTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('procedures_section_entries_required.rb')
  end
end
