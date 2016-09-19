module Ccd
  class AuthorizationActivity < Cda::Act
    include Ccd::AuthorizationActivityTemplate

    def self.template_type
      "act"
    end

    Ccd.load_extension('authorization_activity.rb')
  end
end
