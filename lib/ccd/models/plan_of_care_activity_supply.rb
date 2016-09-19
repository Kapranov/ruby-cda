module Ccd
  class PlanOfCareActivitySupply < Cda::Supply
    include Ccd::PlanOfCareActivitySupplyTemplate

    def self.template_type
      "supply"
    end

    Ccd.load_extension('plan_of_care_activity_supply.rb')
  end
end
