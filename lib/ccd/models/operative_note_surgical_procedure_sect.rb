module Ccd
  class OperativeNoteSurgicalProcedureSect < Cda::Section
    include Ccd::OperativeNoteSurgicalProcedureSectTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('operative_note_surgical_procedure_sect.rb')
  end
end
