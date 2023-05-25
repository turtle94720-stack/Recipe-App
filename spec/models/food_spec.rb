require 'rails_helper'

RSpec.describe Food, type: :model do
  describe 'Food Model' do
    before do
      @user = User.new(name: 'User', email: 'user@gmail.com', password: 'password')
      @food = Food.new(name: 'Food', measurement_unit: 'kg', price: 10, user: @user)
    end

    it 'is not valid without a name' do
      @food.name = nil
      expect(@food).to_not be_valid
    end

    it 'is not valid without a measurement_unit' do
      @food.measurement_unit = nil
      expect(@food).to_not be_valid
    end

    it 'is not valid without a price' do
      @food.price = nil
      expect(@food).to_not be_valid
    end

    it 'is not valid without a user' do
      @food.user = nil
      expect(@food).to_not be_valid
    end
  end
end
