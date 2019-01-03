class User < ApplicationRecord
  has_many :lists
  has_many :artworks, through: :lists

  validates :name, presence: true, length: 5..50
  validates :username, presence: true, length: 5..50, uniqueness: true
  validates :password, confirmation: true, length: { minimum: 7 }
end
