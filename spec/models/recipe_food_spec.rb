require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  describe 'RecipeFood Model' do
    before do
      @user = User.new(name: 'User', email: 'user@gmail.com', password: 'password')
      @recipe = Recipe.new(name: 'Recipe', description: 'Description', user: @user, preparation_time: 10, cooking_time: 10, public: true)
      @food = Food.new(name: 'Food', measurement_unit: 'kg', price: 10, user: @user, quantity: 1)
      @recipe_food = RecipeFood.new(recipe: @recipe, food: @food, quantity: 1)
    end

    it 'is not valid without a recipe' do
      @recipe_food.recipe = nil
      expect(@recipe_food).to_not be_valid
    end

    it 'is not valid without a food' do
      @recipe_food.food = nil
      expect(@recipe_food).to_not be_valid
    end

    it 'is not valid without a quantity' do
      @recipe_food.quantity = nil
      expect(@recipe_food).to_not be_valid
    end

    it 'is valid with valid attributes' do
      expect(@recipe_food).to be_valid
    end
  end
end
