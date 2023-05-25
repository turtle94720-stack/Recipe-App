require 'rails_helper'

RSpec.describe 'Food', type: :feature do
  before :each do
    login_user
    visit foods_path
  end

  it 'has a food table' do
    expect(page).to have_table
  end

  it 'has a correct food name' do
    expect(page).to have_content('Milk')
  end

  it 'has a correct food measurement unit' do
    expect(page).to have_content('kg')
  end

  it 'has a correct food price' do
    expect(page).to have_content('100')
  end

  it 'has add food link' do
    expect(page).to have_link('Add food')
  end
end
