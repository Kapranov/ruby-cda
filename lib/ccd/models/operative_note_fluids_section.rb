module Ccd
  class OperativeNoteFluidsSection < Cda::Section
    include Ccd::OperativeNoteFluidsSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('operative_note_fluids_section.rb')
  end
end
