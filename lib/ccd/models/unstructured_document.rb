module Ccd
  class UnstructuredDocument < Cda::ClinicalDocument
    include Ccd::UnstructuredDocumentTemplate

    def self.template_type
      "ClinicalDocument"
    end

    Ccd.load_extension('unstructured_document.rb')
  end
end
