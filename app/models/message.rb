class Message < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: "user_id"
  belongs_to :chat

  before_create :set_valentime

  def set_valentime
    self.valentime = Time.now
  end
end
