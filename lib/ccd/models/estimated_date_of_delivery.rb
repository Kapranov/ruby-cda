module Ccd
  class EstimatedDateOfDelivery < Cda::Observation
    include Ccd::EstimatedDateOfDeliveryTemplate

    def self.template_type
      "observation"
    end

    Ccd.load_extension('estimated_date_of_delivery.rb')
  end
end
