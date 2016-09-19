module Ccd
  class ConsultationNote < Cda::ClinicalDocument
    include Ccd::ConsultationNoteTemplate

    def self.template_type
      "ClinicalDocument"
    end

    Ccd.load_extension('consultation_note.rb')
  end
end
