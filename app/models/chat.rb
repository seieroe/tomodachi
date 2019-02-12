class Chat < ApplicationRecord
  has_many :user_chats
  has_many :users, class_name: "User", foreign_key: "user_id", through: :user_chats
  has_many :tomodachis, class_name: "User", foreign_key: "tomodachi_id", through: :user_chats
  has_many :messages
end
