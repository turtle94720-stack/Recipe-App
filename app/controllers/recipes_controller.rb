class RecipesController < ApplicationController
  before_action :authenticate_user!

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.includes(:recipe_foods).find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @user = current_user
    @recipe = @user.recipes.new(recipe_params)

    if @recipe.save
      redirect_to recipes_path, notice: t('.success')
    else
      render :new, alert: t('.failure')
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path, notice: t('.success')
  rescue ActiveRecord::RecordNotFound
    redirect_to recipes_path, alert: t('.failure')
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe), notice: t('.success')
  rescue ActiveRecord::RecordNotFound
    redirect_to recipe_path(@recipe), alert: t('.failure')
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public)
  end
end
