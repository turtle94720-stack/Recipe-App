require 'rails_helper'

RSpec.describe 'Shopping List', type: :feature do
    before :each do
        login_user
        @recipe = Recipe.create(
            user_id: @user.id,
            name: 'Brownie',
            preparation_time: 50,
            cooking_time: 90,
            description: 'This is a brownie recipe',
            public: true
            )
        @food = Food.create(
            name: 'Milk',
            measurement_unit: 'kg',
            price: 100,
            user_id: @user.id
            )
        visit shopping_lists_path
    end
            
    it 'has a shopping list table' do
        puts page.body
        expect(page).to have_table
    end
end