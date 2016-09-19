module Ccd
  class DICOMObjectCatalogSectionDCM121 < Cda::Section
    include Ccd::DICOMObjectCatalogSectionDCM121Template

    def self.template_type
      "section"
    end

    Ccd.load_extension('dicom_object_catalog_section_dcm121.rb')
  end
end
