class RecipeFoodsController < ApplicationController
  before_action :authenticate_user!

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_food = @recipe.recipe_foods.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_food = @recipe.recipe_foods.new(recipe_food_params)

    pp @recipe_food.inspect
    pp @recipe_food.errors.full_messages
    pp @recipe_food.valid?

    if @recipe_food.save
      redirect_to recipe_path(@recipe), notice: t('.success')
    else
      render :new, alert: t('.failure')
    end
  end

  private

  def recipe_food_params
    params.require(:recipe_food).permit(:food_id, :quantity)
  end
end
