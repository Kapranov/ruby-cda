module Ccd
  class ProcedureContext < Cda::Act
    include Ccd::ProcedureContextTemplate

    def self.template_type
      "act"
    end

    Ccd.load_extension('procedure_context.rb')
  end
end
