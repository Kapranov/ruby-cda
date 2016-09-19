module Ccd
  class MedicationSupplyOrder < Cda::Supply
    include Ccd::MedicationSupplyOrderTemplate

    def self.template_type
      "supply"
    end

    Ccd.load_extension('medication_supply_order.rb')
  end
end
