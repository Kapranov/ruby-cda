module Ccd
  class FetusSubjectContext < Cda::RelatedSubject
    include Ccd::FetusSubjectContextTemplate

    def self.template_type
      "relatedSubject"
    end

    Ccd.load_extension('fetus_subject_context.rb')
  end
end
