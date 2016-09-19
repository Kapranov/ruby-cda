module Ccd
  class PreconditionForSubstanceAdministrat < Cda::Precondition
    include Ccd::PreconditionForSubstanceAdministratTemplate

    def self.template_type
      "criterion"
    end

    Ccd.load_extension('precondition_for_substance_administrat.rb')
  end
end
