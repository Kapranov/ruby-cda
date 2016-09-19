module Ccd
  class NonMedicinalSupplyActivity < Cda::Supply
    include Ccd::NonMedicinalSupplyActivityTemplate

    def self.template_type
      "supply"
    end

    Ccd.load_extension('non_medicinal_supply_activity.rb')
  end
end
