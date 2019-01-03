class List < ApplicationRecord
  belongs_to :user
  has_many :artwork_lists
  has_many :artworks, through: :artwork_lists

  validates :name, presence: true,
                   length: { minimum: 5 }
end
