class PagesController < ApplicationController
  def index
    @users = User.all.order('ASC').limit(5)
  end
  def inscription

  end
  def erreur

  end
  def intro

  end

  def profil
    if(User.find_by_username(params[:id]))
        @username = params[:id]
    else
      redirect_to root_path, notice: 'Aucun utilisateur correspendant'
    end
  end

  def explore
  end
end
