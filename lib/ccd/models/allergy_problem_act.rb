module Ccd
  class AllergyProblemAct < Cda::Act
    include Ccd::AllergyProblemActTemplate

    def self.template_type
      "act"
    end

    Ccd.load_extension('allergy_problem_act.rb')
  end
end
