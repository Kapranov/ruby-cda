module Ccd
  class SeriesAct < Cda::Act
    include Ccd::SeriesActTemplate

    def self.template_type
      "act"
    end

    Ccd.load_extension('series_act.rb')
  end
end
