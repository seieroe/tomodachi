class User < ApplicationRecord
  has_secure_password

  has_many :heart_strings
  has_many :tomodachis, through: :heart_strings
  has_many :inverse_heart_strings, class_name: "User"
  has_many :inverse_tomodachi, through: :inverse_heart_strings, source: "User"
  has_many :user_chats
  has_many :chats, through: :user_chats

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true
  validates :name, presence: true

  def all_heart_strings
    @all_heart_strings = HeartString.all.select do |heart_string|
      @current_user == heart_string.user || @current_user == heart_string.tomodachi
    end
  end

end
