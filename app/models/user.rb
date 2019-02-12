class User < ApplicationRecord
  has_many :heart_strings
  has_many :tomodachis, through: :heart_strings
  has_many :inverse_heart_strings, class_name: "User"
  has_many :inverse_tomodachi, through: :inverse_heart_strings, source: "User"
  has_many :user_chats
  has_many :chats, through: :user_chats

end
