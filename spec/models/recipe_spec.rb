require 'rails_helper'

RSpec.describe Recipe, type: :model do
  describe 'Recipe Model' do
    before do
      @user = User.new(name: 'User', email: 'user@gmail.com', password: 'password')
      @recipe = Recipe.new(name: 'Recipe', description: 'Description', user: @user, preparation_time: 10, cooking_time: 10, public: true)
    end

    it 'is not valid without a name' do
      @recipe.name = nil
      expect(@recipe).to_not be_valid
    end

    it 'is not valid without a description' do
      @recipe.description = nil
      expect(@recipe).to_not be_valid
    end

    it 'is not valid without a user' do
      @recipe.user = nil
      expect(@recipe).to_not be_valid
    end

    it 'is not valid without a preparation_time' do
      @recipe.preparation_time = nil
      expect(@recipe).to_not be_valid
    end

    it 'is not valid without a cooking_time' do
      @recipe.cooking_time = nil
      expect(@recipe).to_not be_valid
    end

    it 'is valid with valid attributes' do
      expect(@recipe).to be_valid
    end
  end
end
