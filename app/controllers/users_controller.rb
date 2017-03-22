class UsersController < ApplicationController

  def index
    @q = User.ransack(params[:q])
    @people = @q.result(distinct: true)

  end
  def show
    @user = User.find(params[:id])
  end

  def matches
    @matches = current_user.friendships.where(state: "acceptée").map(&:friend) + current_user.inverse_friendships.where(state: "acceptée").map(&:user)
  end





end
