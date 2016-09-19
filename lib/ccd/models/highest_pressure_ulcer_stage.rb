module Ccd
  class HighestPressureUlcerStage < Cda::Observation
    include Ccd::HighestPressureUlcerStageTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('highest_pressure_ulcer_stage.rb')
  end
end
