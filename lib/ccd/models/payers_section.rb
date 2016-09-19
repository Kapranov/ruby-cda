module Ccd
  class PayersSection < Cda::Section
    include Ccd::PayersSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('payers_section.rb')
  end
end
