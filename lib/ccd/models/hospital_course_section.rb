module Ccd
  class HospitalCourseSection < Cda::Section
    include Ccd::HospitalCourseSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('hospital_course_section.rb')
  end
end
