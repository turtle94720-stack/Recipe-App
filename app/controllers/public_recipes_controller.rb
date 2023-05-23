class PublicRecipesController < ApplicationController
  def index
    @recipes = Recipe.includes(:user).includes(:food).includes(:recipe_food).where(public: true)
  end
end
