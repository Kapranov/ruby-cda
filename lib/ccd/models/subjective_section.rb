module Ccd
  class SubjectiveSection < Cda::Section
    include Ccd::SubjectiveSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('subjective_section.rb')
  end
end
