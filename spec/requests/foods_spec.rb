require 'rails_helper'

RSpec.describe 'Foods', type: :request do
  before :each do
    @user = User.create(name: 'Username', email: 'user@gmail.com', password: 'password', confirmed_at: Time.now)

    sign_in @user
  end

  describe 'GET /index' do
    it 'returns http success' do
      get '/foods'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/foods/new'
      expect(response).to have_http_status(:success)
    end
  end
end
