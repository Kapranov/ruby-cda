module Ccd
  class ChiefComplaintAndReasonForVisitS < Cda::Section
    include Ccd::ChiefComplaintAndReasonForVisitSTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('chief_complaint_and_reason_for_visit_s.rb')
  end
end
