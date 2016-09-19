module Ccd
  class MedicationDispense < Cda::Supply
    include Ccd::MedicationDispenseTemplate

    def self.template_type
      "supply"
    end

    Ccd.load_extension('medication_dispense.rb')
  end
end
