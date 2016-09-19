module Ccd
  class PhysicianReadingStudyPerformer < Cda::Performer1
    include Ccd::PhysicianReadingStudyPerformerTemplate

    def self.template_type
      "performer"
    end

    Ccd.load_extension('physician_reading_study_performer.rb')
  end
end
