module Ccd
  class ProgressNote < Cda::ClinicalDocument
    include Ccd::ProgressNoteTemplate

    def self.template_type
      "ClinicalDocument"
    end

    Ccd.load_extension('progress_note.rb')
  end
end
