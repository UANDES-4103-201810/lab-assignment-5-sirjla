class TicketsController < ApplicationController
  def show
    ticket = Ticket.find(params[:id])
    render json: ticket
  end

  def create
  end

  def update
  end

  def destroy
  end
end
