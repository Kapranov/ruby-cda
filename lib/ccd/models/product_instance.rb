module Ccd
  class ProductInstance < Cda::ParticipantRole
    include Ccd::ProductInstanceTemplate

    def self.template_type
      "participantRole"
    end

    Ccd.load_extension('product_instance.rb')
  end
end
