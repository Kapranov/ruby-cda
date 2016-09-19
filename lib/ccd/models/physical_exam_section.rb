module Ccd
  class PhysicalExamSection < Cda::Section
    include Ccd::PhysicalExamSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('physical_exam_section.rb')
  end
end
