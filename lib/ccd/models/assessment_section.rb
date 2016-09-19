module Ccd
  class AssessmentSection < Cda::Section
    include Ccd::AssessmentSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('assessment_section.rb')
  end
end
