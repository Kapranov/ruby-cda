module Ccd
  class CommentActivity < Cda::Act
    include Ccd::CommentActivityTemplate

    def self.template_type
      "act"
    end

    Ccd.load_extension('comment_activity.rb')
  end
end
