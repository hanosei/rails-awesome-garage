class FavouritesController < ApplicationController
  before_action :set_car, only: [:create]

  def create
    if Favourite.exists?(car: @car)
      flash[:alert] = "This car is already in your garage!"
    else
      Favourite.create!(car: @car)
      flash[:notice] = "Car added to your garage!"
    end
    redirect_to car_path(@car)
  end

  def index
    @favourites = Favourite.includes(:car)
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    flash[:notice] = "Car removed from your garage!"
    redirect_to favourites_path
  end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end
end
