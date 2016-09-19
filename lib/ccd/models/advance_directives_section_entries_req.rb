module Ccd
  class AdvanceDirectivesSectionEntriesReq < Cda::Section
    include Ccd::AdvanceDirectivesSectionEntriesReqTemplate

    def self.template_type
      "section"
    end

    Ccd.load_extension('advance_directives_section_entries_req.rb')
  end
end
