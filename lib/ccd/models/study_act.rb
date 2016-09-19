module Ccd
  class StudyAct < Cda::Act
    include Ccd::StudyActTemplate

    def self.template_type
      "act"
    end

    Ccd.load_extension('study_act.rb')
  end
end
