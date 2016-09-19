module Ccd
  class InterventionsSection < Cda::Section
    include Ccd::InterventionsSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('interventions_section.rb')
  end
end
