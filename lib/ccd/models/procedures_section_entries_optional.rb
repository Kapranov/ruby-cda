module Ccd
  class ProceduresSectionEntriesOptional < Cda::Section
    include Ccd::ProceduresSectionEntriesOptionalTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('procedures_section_entries_optional.rb')
  end
end
