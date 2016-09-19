module Ccd
  class ComplicationsSection < Cda::Section
    include Ccd::ComplicationsSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('complications_section.rb')
  end
end
