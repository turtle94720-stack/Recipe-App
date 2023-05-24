class PublicRecipesController < ApplicationController
  def index
    @recipes = Recipe.includes(:user, recipe_foods: [:food]).where(public: true).order('created_at DESC')
  end
end
