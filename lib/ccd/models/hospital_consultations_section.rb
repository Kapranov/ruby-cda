module Ccd
  class HospitalConsultationsSection < Cda::Section
    include Ccd::HospitalConsultationsSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('hospital_consultations_section.rb')
  end
end
