class FriendshipsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:create]
  before_action :set_friendship, only: [:destroy, :accept]


  def create
    @friendship = current_user.request_friendship(@user)
    respond_to do |format|
      format.html {redirect_to users_path, notice: "mise en relation crée"}
    end
  end
  ## supprimer
  def destroy
    @friendship.destroy
    respond_to do |format|
      format.html {redirect_to users_path, notice: "mise en relation supprimée"}
    end
  end

  def accept
    @friendship.accept_friendship
    respond_to do |format|
      format.html {redirect_to users_path, notice: "demande acceptée"}
    end
  end
  private
  def set_user
    @user = User.find(params[:user_id])
  end

  def set_friendship
    @friendship = Friendship.find(params[:id])
  end

end