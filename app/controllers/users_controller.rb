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
    user.update!(params[:user])
    redirect_to user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
  end

  def more_tickets_bought
    ut = UserTicket.select('user_id, count(user_id)').group(:user_id).limit(10)
    #users = User.find(ut.user_id)
    render json: ut
  end
end
