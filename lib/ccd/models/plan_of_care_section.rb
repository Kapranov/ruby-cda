module Ccd
  class PlanOfCareSection < Cda::Section
    include Ccd::PlanOfCareSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('plan_of_care_section.rb')
  end
end
