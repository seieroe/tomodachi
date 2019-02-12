class UserChat < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: "user_id"
  belongs_to :tomodachi, class_name: "User", foreign_key: "tomodachi_id"
  belongs_to :chat
end
