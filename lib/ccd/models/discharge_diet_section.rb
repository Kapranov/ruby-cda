module Ccd
  class DischargeDietSection < Cda::Section
    include Ccd::DischargeDietSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('discharge_diet_section.rb')
  end
end
