module Ccd
  class CodeObservations < Cda::Observation
    include Ccd::CodeObservationsTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('code_observations.rb')
  end
end
