class PublicRecipesController < ApplicationController
  def index
    @user = current_user
    @recipes = @user.recipes.includes(:user).includes(:foods).where(public: true)

    @recipes.each do |recipe|
      recipe.recipe_foods.each { |recipe_food| recipe_food.quantity ||= 1 }
    end

    @total_food_items = @recipes.flat_map(&:recipe_foods).length
    @total_price = 0

    @recipes.each do |recipe|
      recipe.recipe_foods.each do |recipe_food|
        @total_price += recipe_food.food.price * recipe_food.quantity
      end
    end
  end
end
