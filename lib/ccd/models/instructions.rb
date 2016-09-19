module Ccd
  class Instructions < Cda::Act
    include Ccd::InstructionsTemplate

    def self.template_type
      "act"
    end

    Ccd.load_extension('instructions.rb')
  end
end
