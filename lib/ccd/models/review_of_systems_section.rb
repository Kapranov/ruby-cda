module Ccd
  class ReviewOfSystemsSection < Cda::Section
    include Ccd::ReviewOfSystemsSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('review_of_systems_section.rb')
  end
end
