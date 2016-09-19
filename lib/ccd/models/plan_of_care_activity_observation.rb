module Ccd
  class PlanOfCareActivityObservation < Cda::Observation
    include Ccd::PlanOfCareActivityObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('plan_of_care_activity_observation.rb')
  end
end
