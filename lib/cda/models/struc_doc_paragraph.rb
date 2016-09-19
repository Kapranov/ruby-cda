class Cda::StrucDocParagraph < Cda::Base
  attribute :caption, Cda::StrucDocCaption
  attribute :content, Array[Cda::StrucDocContent], annotations: {:multiple=>true}
  attribute :link_html, Array[Cda::StrucDocLinkHtml], annotations: {:multiple=>true}
  attribute :sub, Array[Cda::StrucDocSub], annotations: {:multiple=>true}
  attribute :sup, Array[Cda::StrucDocSup], annotations: {:multiple=>true}
  attribute :br, Array[Cda::StrucDocBr], annotations: {:multiple=>true}
  attribute :footnote, Array[Cda::StrucDocFootnote], annotations: {:multiple=>true}
  attribute :footnote_ref, Array[Cda::StrucDocFootnoteRef], annotations: {:multiple=>true}
  attribute :render_multi_media, Array[Cda::StrucDocRenderMultiMedia], annotations: {:multiple=>true}
  attribute :id, String, annotations: {:kind=>:attribute}
  attribute :language, String, annotations: {:kind=>:attribute}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute}
  attribute :_text, String
end
