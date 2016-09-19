module Ccd
  class ReasonForVisitSection < Cda::Section
    include Ccd::ReasonForVisitSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('reason_for_visit_section.rb')
  end
end
