class UsersController < ApplicationController

  def index
    @q = User.ransack(params[:q])
    @people = @q.result(distinct: true)

  end
  def show
    @user = User.find(params[:id])
  end

  def follow
    current_user.follow(@user)
    @follow = Follow.find_by(follower: current_user, followable: @user)
  end

  def unfollow
    current_user.stop_following(@user)
    respond_to :js
  end

end
