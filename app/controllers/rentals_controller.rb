class RentalsController < ApplicationController
  def index
    @user = current_user
    @rentals = Rental.all
  end
  def new
    @artwork = Artwork.find(params[:artwork_id])
    @rental = Rental.new
  end

  def accept_rentals
    @rental = Rental.find(params[:id])
    @rental.status = "Accepted"
    @rental.save
    redirect_to rentals_path
  end

  def decline_rentals
    @rental = Rental.find(params[:id])
    @rental.status = "Declined"
    @rental.save
    redirect_to rentals_path
  end

  def create
    @user = current_user
    @rental = Rental.new(rental_params)
    @artwork = Artwork.find(params[:artwork_id])
    @rental.artwork = @artwork
    @rental.user = @user
    @rental.status = "Pending"
    if @rental.save
      redirect_to artwork_path(@artwork)
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
