module Ccd
  class GeneralStatusSection < Cda::Section
    include Ccd::GeneralStatusSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('general_status_section.rb')
  end
end
