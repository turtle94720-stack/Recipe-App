require 'rails_helper'

RSpec.describe 'Shopping List', type: :feature do
  before :each do
    login_user
    visit shopping_lists_path
  end

  it 'has amount of food items to buy' do
    expect(page).to have_content('Amount of food items to buy:')
  end

  it 'has total value of food needed' do
    expect(page).to have_content('Total value of food needed:')
  end

  it 'has product column' do
    expect(page).to have_content('Product')
  end

  it 'has to buy column' do
    expect(page).to have_content('To buy')
  end

  it 'has total price column' do
    expect(page).to have_content('Total price')
  end
end
