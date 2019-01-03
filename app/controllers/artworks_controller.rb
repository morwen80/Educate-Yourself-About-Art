class ArtworksController < ApplicationController
  before_action :artist

  def index
    @artworks = Artwork.all
  end

  def show
    @artwork = Artwork.find(params[:id])
  end
  
  private
  def artist
    @artist = Artist.find(params[:artist_id])
  end
end
