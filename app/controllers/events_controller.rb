class EventsController < ApplicationController
  def show
    event = Event.find(params[:id])
    render json: event
  end

  def create
  end

  def update
  end

  def destroy
  end
end
