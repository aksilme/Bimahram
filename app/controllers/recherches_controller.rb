class RecherchesController < ApplicationController
  def new
    @search = Recherche.new

  end

  def create
    @search = Recherche.create(search_params)
    redirect_to @search

  end
  def show
    @search = Recherche.find(params[:id])
  end


  private
  def search_params
    params.require(:recherche).permit(:genre, :agemin, :agemax, :taillemin, :taillemax,:poidsmin, :poidsmax, :lieux)
  end
end
