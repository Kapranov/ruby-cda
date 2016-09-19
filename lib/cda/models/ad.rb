class Cda::AD < Cda::ANY
  attribute :delimiter, Array[Cda::AdxpDelimiter], annotations: {:multiple=>true}
  attribute :country, Array[Cda::AdxpCountry], annotations: {:multiple=>true}
  attribute :state, Array[Cda::AdxpState], annotations: {:multiple=>true}
  attribute :county, Array[Cda::AdxpCounty], annotations: {:multiple=>true}
  attribute :city, Array[Cda::AdxpCity], annotations: {:multiple=>true}
  attribute :postal_code, Array[Cda::AdxpPostalCode], annotations: {:multiple=>true}
  attribute :street_address_line, Array[Cda::AdxpStreetAddressLine], annotations: {:multiple=>true}
  attribute :house_number, Array[Cda::AdxpHouseNumber], annotations: {:multiple=>true}
  attribute :house_number_numeric, Array[Cda::AdxpHouseNumberNumeric], annotations: {:multiple=>true}
  attribute :direction, Array[Cda::AdxpDirection], annotations: {:multiple=>true}
  attribute :street_name, Array[Cda::AdxpStreetName], annotations: {:multiple=>true}
  attribute :street_name_base, Array[Cda::AdxpStreetNameBase], annotations: {:multiple=>true}
  attribute :street_name_type, Array[Cda::AdxpStreetNameType], annotations: {:multiple=>true}
  attribute :additional_locator, Array[Cda::AdxpAdditionalLocator], annotations: {:multiple=>true}
  attribute :unit_id, Array[Cda::AdxpUnitID], annotations: {:multiple=>true}
  attribute :unit_type, Array[Cda::AdxpUnitType], annotations: {:multiple=>true}
  attribute :care_of, Array[Cda::AdxpCareOf], annotations: {:multiple=>true}
  attribute :census_tract, Array[Cda::AdxpCensusTract], annotations: {:multiple=>true}
  attribute :delivery_address_line, Array[Cda::AdxpDeliveryAddressLine], annotations: {:multiple=>true}
  attribute :delivery_installation_type, Array[Cda::AdxpDeliveryInstallationType], annotations: {:multiple=>true}
  attribute :delivery_installation_area, Array[Cda::AdxpDeliveryInstallationArea], annotations: {:multiple=>true}
  attribute :delivery_installation_qualifier, Array[Cda::AdxpDeliveryInstallationQualifier], annotations: {:multiple=>true}
  attribute :delivery_mode, Array[Cda::AdxpDeliveryMode], annotations: {:multiple=>true}
  attribute :delivery_mode_identifier, Array[Cda::AdxpDeliveryModeIdentifier], annotations: {:multiple=>true}
  attribute :building_number_suffix, Array[Cda::AdxpBuildingNumberSuffix], annotations: {:multiple=>true}
  attribute :post_box, Array[Cda::AdxpPostBox], annotations: {:multiple=>true}
  attribute :precinct, Array[Cda::AdxpPrecinct], annotations: {:multiple=>true}
  attribute :useable_period, Array[Cda::SXCM_TS], annotations: {:multiple=>true}
  attribute :use, Cda::Set_PostalAddressUse, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :is_not_ordered, Boolean, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :_text, String
end
