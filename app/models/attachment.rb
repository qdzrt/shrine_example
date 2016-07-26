class Attachment < ActiveRecord::Base
  belongs_to :user
  delegate :name, to: :user, prefix: "user"
end
