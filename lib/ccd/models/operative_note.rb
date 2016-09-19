module Ccd
  class OperativeNote < Cda::ClinicalDocument
    include Ccd::OperativeNoteTemplate

    def self.template_type
      "ClinicalDocument"
    end

    Ccd.load_extension('operative_note.rb')
  end
end
