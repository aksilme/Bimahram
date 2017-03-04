class PagesController < ApplicationController
  def index
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
