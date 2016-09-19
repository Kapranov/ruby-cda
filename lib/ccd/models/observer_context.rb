module Ccd
  class ObserverContext < Cda::AssignedAuthor
    include Ccd::ObserverContextTemplate

    def self.template_type
      "assignedAuthor"
    end

    Ccd.load_extension('observer_context.rb')
  end
end
