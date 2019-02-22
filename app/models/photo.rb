class Photo < ApplicationRecord
  belongs_to :heart_string

  has_one_attached :photo

  #VALIDATE PHOTO EXISTENCE LATER
end
