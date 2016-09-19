module Ccd
  class ReasonForReferralSection < Cda::Section
    include Ccd::ReasonForReferralSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('reason_for_referral_section.rb')
  end
end
