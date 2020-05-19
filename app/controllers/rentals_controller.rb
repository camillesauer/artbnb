class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  # def show
  #   @rentals = Rental.all
  #   @rental = Rental.find(params[:id])
  # end

  def new
    @rental = Rental.new
  end

  def create
    @user = current_user
    @rental = Rental.new(rental_params)
    @artwork = Artwork.find(params[:artwork_id])
    @rental.artwork = @artwork
    @rental.user = @user
    if @rental.save
      redirect_to rental_path
    else
      render 'new'
    end
  end

  def delete
    @rental = Rental.find(params[:rental_id])
    @rental.destroy
    redirect_to artworks_path
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date, :status)
  end
end
