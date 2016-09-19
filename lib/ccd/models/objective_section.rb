module Ccd
  class ObjectiveSection < Cda::Section
    include Ccd::ObjectiveSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('objective_section.rb')
  end
end
