module Ccd
  class MedicationsAdministeredSection < Cda::Section
    include Ccd::MedicationsAdministeredSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('medications_administered_section.rb')
  end
end
