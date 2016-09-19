module Ccd
  class SocialHistorySection < Cda::Section
    include Ccd::SocialHistorySectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('social_history_section.rb')
  end
end
