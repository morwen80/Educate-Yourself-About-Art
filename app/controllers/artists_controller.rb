class ArtistsController < ApplicationController

  include ArtistHelper

  @@artists = []

  def index
    @artists = Artist.all
  end

  def search_results
    @artists = @@artists
  end

  def search
    if params[:search] && params[:search] != ""
      @@artists = search_for_artists(params[:search])
      redirect_to search_results_path
    else
      flash[:search_error] = "There are no artists matching this search"
      redirect_to artists_path
    end
  end

  def show
    @artist = Artist.find(params[:id])
  end

  private
  def artist_params
    params.require(:artist).permit(:slug, :name, :gender, :biography, :birth_day, :death_day, :hometown, :location, :nationality, :image)
  end
end
