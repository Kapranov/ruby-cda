module Ccd
  class PlanOfCareActivityEncounter < Cda::Encounter
    include Ccd::PlanOfCareActivityEncounterTemplate

    def self.template_type
      "encounter"
    end

    Ccd.load_extension('plan_of_care_activity_encounter.rb')
  end
end
