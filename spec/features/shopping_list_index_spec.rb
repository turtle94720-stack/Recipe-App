require 'rails_helper'

RSpec.describe 'Shopping List', type: :feature do
    before :each do
        login_user
        visit shopping_lists_path
    end
            
    it 'has a shopping list table' do
        expect(page).to have_table
    end

    it 'has amount of food items to buy' do
        expect(page).to have_content('Amount of food items to buy:')
    end

    it 'has total value of food needed' do
        expect(page).to have_content('Total value of food needed:')
    end
    
    it 'has correct food name' do
        expect(page).to have_content('Milk')
    end

    it 'has correct food measurement unit' do
        expect(page).to have_content('kg')
    end

    it 'has correct food price' do
        expect(page).to have_content('100')
    end
end