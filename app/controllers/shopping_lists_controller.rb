class ShoppingListsController < ApplicationController
  def index
    @user = current_user
    @recipes = @user.recipes.includes(:foods) # Load associated foods for the recipes

    # Get all the food IDs from the user's recipes
    recipe_food_ids = @recipes.map { |recipe| recipe.foods.pluck(:id) }.flatten

    # Find the missing foods by comparing the recipe food IDs with all the user's food IDs
    @missing_foods = @user.foods.where.not(id: recipe_food_ids)

    # Calculate the total food items and total price of the missing foods
    @total_food_items = @missing_foods.sum(:quantity)
    @total_price = @missing_foods.sum('quantity * price')
  end
end
