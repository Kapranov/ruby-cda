module Ccd
  class SOPInstanceObservation < Cda::Observation
    include Ccd::SOPInstanceObservationTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('sop_instance_observation.rb')
  end
end
