module Ccd
  class ImmunizationActivity < Cda::SubstanceAdministration
    include Ccd::ImmunizationActivityTemplate

    def self.template_type
      "substanceAdministration"
    end

    Ccd.load_extension('immunization_activity.rb')
  end
end
