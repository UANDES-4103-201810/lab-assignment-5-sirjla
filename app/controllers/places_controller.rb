class PlacesController < ApplicationController
  def show
    place = Place.find(params[:id])
    render json: place
  end

  def create
  end

  def update
  end

  def destroy
  end
end
