module Ccd
  class ProcedureActivityAct < Cda::Act
    include Ccd::ProcedureActivityActTemplate

    def self.template_type
      "act"
    end

    Ccd.load_extension('procedure_activity_act.rb')
  end
end
