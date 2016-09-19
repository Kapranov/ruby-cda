module Ccd
  class PhysicianOfRecordParticipant < Cda::EncounterParticipant
    include Ccd::PhysicianOfRecordParticipantTemplate

    def self.template_type
      "encounterParticipant"
    end

    Ccd.load_extension('physician_of_record_participant.rb')
  end
end
