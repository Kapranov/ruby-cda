module Ccd
  class ImplantsSection < Cda::Section
    include Ccd::ImplantsSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('implants_section.rb')
  end
end
