module Ccd
  class SurgicalDrainsSection < Cda::Section
    include Ccd::SurgicalDrainsSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('surgical_drains_section.rb')
  end
end
