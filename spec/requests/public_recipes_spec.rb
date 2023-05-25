require 'rails_helper'

RSpec.describe 'PublicRecipes', type: :request do
  before :each do
    @user = User.create(name: 'Username', email: 'user@gmail.com', password: 'password', confirmed_at: Time.now)

    sign_in @user
  end
  
  describe 'GET /index' do
    it 'returns http success' do
      get '/public_recipes'
      expect(response).to have_http_status(:success)
    end
  end
end
