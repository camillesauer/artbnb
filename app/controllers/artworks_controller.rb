class ArtworksController < ApplicationController

  def index
    @artworks = Artwork.geocoded # returns flats with coordinates

    @markers = @artworks.map do |artwork|
      {
        lat: artwork.latitude,
        lng: artwork.longitude
      }
    end
  end

  def show
    @artwork = Artwork.find(params[:id])
  end

  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(artwork_params)
    @artwork.user = current_user
    @artwork.save!
    redirect_to artwork_path(@artwork)
  end

  def edit
    @artwork = Artwork.find(params[:id])
  end

  def update
    @artwork = Artwork.find(params[:id])
    @artwork.update(artwork_params)
    redirect_to artwork_path(@artwork)
  end

  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy

    redirect_to artworks_user_path
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :description, :price, :category, :dimension, :photo, :address)
  end
end
