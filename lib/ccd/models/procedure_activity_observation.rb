module Ccd
  class ProcedureActivityObservation < Cda::Observation
    include Ccd::ProcedureActivityObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('procedure_activity_observation.rb')
  end
end
