module Ccd
  class TobaccoUse < Cda::Observation
    include Ccd::TobaccoUseTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('tobacco_use.rb')
  end
end
