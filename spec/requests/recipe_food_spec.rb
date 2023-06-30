require 'rails_helper'

RSpec.describe 'RecipeFoods', type: :request do
  before :each do
    @user = User.create(name: 'Username', email: 'user@gmail.com', password: 'password', confirmed_at: Time.now)
    @recipe = Recipe.create(name: 'Recipe', description: 'Description', user: @user, preparation_time: 10, cooking_time: 10, public: true)

    sign_in @user
  end

  describe 'GET /new' do
    it 'returns http success' do
      get new_recipe_recipe_food_path(@recipe)
      expect(response).to have_http_status(:success)
    end
  end
end
