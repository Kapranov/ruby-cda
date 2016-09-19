module Ccd
  class ProcedureNote < Cda::ClinicalDocument
    include Ccd::ProcedureNoteTemplate

    def self.template_type
      "ClinicalDocument"
    end

    Ccd.load_extension('procedure_note.rb')
  end
end
