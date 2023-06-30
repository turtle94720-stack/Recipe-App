require 'rails_helper'

RSpec.describe 'Recipes', type: :request do
  before :each do
    @user = User.create(name: 'Username', email: 'user@gmail.com', password: 'password', confirmed_at: Time.now)
    @recipe = Recipe.create(name: 'Recipe', description: 'Description', user: @user, preparation_time: 10, cooking_time: 10, public: true)

    sign_in @user
  end

  describe 'GET /index' do
    it 'returns http success' do
      get '/recipes'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/recipes/new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get recipe_path(@recipe)
      expect(response).to have_http_status(:success)
    end
  end
end
