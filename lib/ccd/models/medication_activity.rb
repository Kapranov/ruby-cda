module Ccd
  class MedicationActivity < Cda::SubstanceAdministration
    include Ccd::MedicationActivityTemplate

    def self.template_type
      "substanceAdministration"
    end

    Ccd.load_extension('medication_activity.rb')
  end
end
