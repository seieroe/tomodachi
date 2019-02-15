class HeartString < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: "user_id"
  belongs_to :tomodachi, class_name: "User", foreign_key: "tomodachi_id", required: false
  has_one :chat
  has_many :photos
  validate :unique_hearstring

  # validates :tomodachi_id, allow_blank :true
  def unique_hearstring
    HeartString.all.each do |heart_string|
      # byebug
      if (heart_string.user_id == self.user_id && heart_string.tomodachi_id == self.tomodachi_id) || (heart_string.tomodachi_id == self.user_id && heart_string.user_id == self.tomodachi_id)
        errors.add(:heartstring, "already exists")
      end
    end
  end

end
