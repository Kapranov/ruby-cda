module Ccd
  class SurgeryDescriptionSection < Cda::Section
    include Ccd::SurgeryDescriptionSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('surgery_description_section.rb')
  end
end
