module Ccd
  class ProcedureSpecimensTakenSection < Cda::Section
    include Ccd::ProcedureSpecimensTakenSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('procedure_specimens_taken_section.rb')
  end
end
