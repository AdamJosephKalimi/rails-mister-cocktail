class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail= Cocktail.new
  end

  # fix the edit button
  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  #fix the update
  def update

  end

  def create
   @cocktail = Cocktail.create(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'new'
    end
  end

  private

  def cocktail_params
    # params[:cocktail]
    params.require(:cocktail).permit(:name)
  end


end
