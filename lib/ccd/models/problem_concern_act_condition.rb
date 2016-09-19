module Ccd
  class ProblemConcernActCondition < Cda::Act
    include Ccd::ProblemConcernActConditionTemplate

    def self.template_type
      "act"
    end

    Ccd.load_extension('problem_concern_act_condition.rb')
  end
end
