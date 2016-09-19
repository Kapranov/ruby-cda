module Ccd
  class PlanOfCareActivityProcedure < Cda::Procedure
    include Ccd::PlanOfCareActivityProcedureTemplate

    def self.template_type
      "procedure"
    end

    Ccd.load_extension('plan_of_care_activity_procedure.rb')
  end
end
