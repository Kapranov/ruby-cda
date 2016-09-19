module Ccd
  class AssessmentAndPlanSection < Cda::Section
    include Ccd::AssessmentAndPlanSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('assessment_and_plan_section.rb')
  end
end
