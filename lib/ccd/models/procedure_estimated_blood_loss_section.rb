module Ccd
  class ProcedureEstimatedBloodLossSection < Cda::Section
    include Ccd::ProcedureEstimatedBloodLossSectionTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('procedure_estimated_blood_loss_section.rb')
  end
end
