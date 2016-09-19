module Ccd
  class ProcedureActivityProcedure < Cda::Procedure
    include Ccd::ProcedureActivityProcedureTemplate

    def self.template_type
      "procedure"
    end

    Ccd.load_extension('procedure_activity_procedure.rb')
  end
end
