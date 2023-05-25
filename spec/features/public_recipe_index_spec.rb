require 'rails_helper'

RSpec.describe 'Public Recipe', type: :feature do
  before :each do
    login_user
    visit root_path
  end

  it 'has public recipe name' do
    expect(page).to have_content('Brownie')
  end

  it 'has correct username' do
    expect(page).to have_content('Username')
  end

  it 'has total food items' do
    expect(page).to have_content('Total food items:')
  end

  it 'has total price' do
    expect(page).to have_content('Total price:')
  end
end
