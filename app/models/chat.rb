class Chat < ApplicationRecord
  has_many :user_chats
  has_many :users, class_name: "User", foreign_key: "user_id", through: :user_chats
  has_many :tomodachis, class_name: "User", foreign_key: "tomodachi_id", through: :user_chats
  has_many :messages

  accepts_nested_attributes_for :messages

  belongs_to :heart_string
end
