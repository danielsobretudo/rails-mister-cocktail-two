class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  def index
    @cocktails = Cocktail.all
  end


  def show
  end

  def edit
  end

  def update
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path(@cocktail)
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :ingredients, :stars, :image_url, :recipe)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
