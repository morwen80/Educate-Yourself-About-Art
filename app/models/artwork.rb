class Artwork < ApplicationRecord
  belongs_to :artist
  has_many :artwork_lists
  has_many :lists, through: :artwork_lists
end
