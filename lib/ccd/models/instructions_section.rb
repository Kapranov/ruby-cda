module Ccd
  class InstructionsSection < Cda::Section
    include Ccd::InstructionsSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('instructions_section.rb')
  end
end
