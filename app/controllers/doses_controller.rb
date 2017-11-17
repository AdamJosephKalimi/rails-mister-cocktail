class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = Ingredient.all
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    if @does.save
      redirect_to cocktail_path(@dose.cocktail)
    else
      render 'new'
    # render 'new' - this says that if the file doesn't save,
    # return to the create page
    if
  end

  def destroy
    @does = Dose.find(params[:id])
    @dose.destroy
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
