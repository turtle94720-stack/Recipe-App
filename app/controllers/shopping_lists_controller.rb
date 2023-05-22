class ShoppingListsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @recipes = @user.recipes.includes(:recipe_foods).includes(:foods)

    # Get all the food IDs from the user's recipes
    recipe_food_ids = @recipes.map { |recipe| recipe.foods.pluck(:id) }.flatten.uniq

    # Find the missing foods by comparing the recipe food IDs with all the user's food IDs
    @missing_foods = @user.foods.where.not(id: recipe_food_ids).order(:name)

    # Set a default quantity of 1 for foods with nil quantity
    @missing_foods.each { |food| food.quantity ||= 1 }

    # Calculate the total food items and total price of the missing foods
    @total_food_items = @missing_foods.length
    @total_price = 0
    @missing_foods.each { |food| @total_price += food.price * food.quantity }
  end
end
