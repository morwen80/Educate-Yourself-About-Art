class Artist < ApplicationRecord
  has_many :artworks

  # def format_slug
  #   slug.split(" ").join("-")
  # end
end
