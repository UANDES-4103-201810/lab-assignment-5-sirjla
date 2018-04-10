class TicketsController < ApplicationController
  def show
    ticket = Ticket.find(params[:id])
    render json: ticket
  end

  def create
    ticket = Ticket.new(params[:ticket])
    redirect_to user
  end

  def update
    ticket = Ticket.find(params[:id])
    ticket.update!(params[:ticket])
    redirect_to ticket
  end

  def destroy
    ticket = Ticket.find(params[:id])
    ticket.destroy
  end

end
