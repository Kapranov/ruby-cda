module Ccd
  class ProblemStatus < Cda::Observation
    include Ccd::ProblemStatusTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('problem_status.rb')
  end
end
