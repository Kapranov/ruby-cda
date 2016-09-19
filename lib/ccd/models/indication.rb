module Ccd
  class Indication < Cda::Observation
    include Ccd::IndicationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('indication.rb')
  end
end
