module Ccd
  class PlanOfCareActivitySubstanceAdmini < Cda::SubstanceAdministration
    include Ccd::PlanOfCareActivitySubstanceAdminiTemplate

    def self.template_type
      "substanceAdministration"
    end

    Ccd.load_extension('plan_of_care_activity_substance_admini.rb')
  end
end
