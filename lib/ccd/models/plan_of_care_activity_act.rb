module Ccd
  class PlanOfCareActivityAct < Cda::Act
    include Ccd::PlanOfCareActivityActTemplate

    def self.template_type
      "act"
    end

    Ccd.load_extension('plan_of_care_activity_act.rb')
  end
end
