module Ccd
  class CoverageActivity < Cda::Act
    include Ccd::CoverageActivityTemplate

    def self.template_type
      "act"
    end

    Ccd.load_extension('coverage_activity.rb')
  end
end
