class ArtworkList < ApplicationRecord
  belongs_to :list
  belongs_to :artwork
end
