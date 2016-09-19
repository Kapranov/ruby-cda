module Ccd
  class AnesthesiaSection < Cda::Section
    include Ccd::AnesthesiaSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('anesthesia_section.rb')
  end
end
