class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.new(params[:user])
    redirect_to user
  end

  def update
    user = User.find(params[:id])
    puts params[:user]
    user.update!(params[:user])
    redirect_to user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
  end

  def more_tickets_bought
    ut = UserTicket.group(user).count
    render json: ut
  end
end
