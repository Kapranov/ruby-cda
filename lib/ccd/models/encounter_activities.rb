module Ccd
  class EncounterActivities < Cda::Encounter
    include Ccd::EncounterActivitiesTemplate

    def self.template_type
      "encounter"
    end

    Ccd.load_extension('encounter_activities.rb')
  end
end
