module Ccd
  class ContinuityOfCareDocumentCCD < Cda::ClinicalDocument
    include Ccd::ContinuityOfCareDocumentCCDTemplate

    def self.template_type
      "ClinicalDocument"
    end

    Ccd.load_extension('continuity_of_care_document_ccd.rb')
  end
end
