require 'rails_helper'

describe 'Recipe new page', type: :feature do
  let(:locale) { :en }

  before :each do
    login_user
    visit new_recipe_path
  end

  it 'I can see the title of the page.' do
    expect(page).to have_content 'New Recipe'
  end

  it 'I can see the name field.' do
    expect(page).to have_field 'recipe_name'
  end

  it 'I can see the description field.' do
    expect(page).to have_field 'recipe_description'
  end

  it 'I can see the preparation time field.' do
    expect(page).to have_field 'recipe_preparation_time'
  end

  it 'I can see the cooking time field.' do
    expect(page).to have_field 'recipe_cooking_time'
  end

  it 'I can see the public field.' do
    expect(page).to have_field 'recipe_public'
  end

  it 'If user fill all fields and click Create Recipe button, should redirect to Recipes Path' do
    fill_in 'recipe_name', with: 'Recipe1'
    fill_in 'recipe_description', with: 'Description1'
    fill_in 'recipe_preparation_time', with: 10
    fill_in 'recipe_cooking_time', with: 10
    check 'recipe_public'

    click_button 'Create Recipe'

    expect(page).to have_current_path(recipes_path)
  end
end
