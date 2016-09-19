module Ccd
  class ChiefComplaintSection < Cda::Section
    include Ccd::ChiefComplaintSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('chief_complaint_section.rb')
  end
end
