class ShoppingListsController < ApplicationController
  def index
    @recipes = Recipe.includes(recipe_foods: :food).where(public: true).order(:updated_at)
  end
end
