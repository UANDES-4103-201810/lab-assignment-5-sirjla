class PlacesController < ApplicationController
  def show
    place = Place.find(params[:id])
    render json: place
  end

  def create
    place = Place.new(params[:place])
    redirect_to place
  end

  def update
    place = Place.find(params[:id])
    place.update!(params[:place])
    redirect_to place
  end

  def destroy
    place = Place.find(params[:id])
    place.destroy
  end

end
