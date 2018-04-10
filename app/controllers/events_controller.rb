class EventsController < ApplicationController
  def show
    event = Event.find(params[:id])
    render json: event
  end

  def create
    event = Event.new(params[:event])
    redirect_to event
  end

  def update
    event = Event.find(params[:id])
    event.update!(params[:event])
    redirect_to event
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
  end
  
  def more_bought_events
    tickets = UserTicket.select(:paid => false)
  end

end
