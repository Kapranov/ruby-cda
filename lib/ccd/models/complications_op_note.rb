module Ccd
  class ComplicationsOpNote < Cda::Section
    include Ccd::ComplicationsOpNoteTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('complications_op_note.rb')
  end
end
