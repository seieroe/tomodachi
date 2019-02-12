class User < ApplicationRecord
  has_many :heartstrings
  has_many :tomodachis, through: :heartstrings
  has_many :inverse_heartstrings, class_name: "User"
  has_many :inverse_tomodachi, through: :inverse_heartstrings, source: "User"


end
