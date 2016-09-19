module Ccd
  class PolicyActivity < Cda::Act
    include Ccd::PolicyActivityTemplate

    def self.template_type
      "act"
    end

    Ccd.load_extension('policy_activity.rb')
  end
end
