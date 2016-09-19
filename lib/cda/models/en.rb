class Cda::EN < Cda::ANY
  attribute :delimiter, Array[Cda::EnDelimiter], annotations: {:multiple=>true}
  attribute :family, Array[Cda::EnFamily], annotations: {:multiple=>true}
  attribute :given, Array[Cda::EnGiven], annotations: {:multiple=>true}
  attribute :prefix, Array[Cda::EnPrefix], annotations: {:multiple=>true}
  attribute :suffix, Array[Cda::EnSuffix], annotations: {:multiple=>true}
  attribute :valid_time, Cda::IVL_TS
  attribute :use, Cda::Set_EntityNameUse, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :_text, String
end
