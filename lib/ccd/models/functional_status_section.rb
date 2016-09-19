module Ccd
  class FunctionalStatusSection < Cda::Section
    include Ccd::FunctionalStatusSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('functional_status_section.rb')
  end
end
