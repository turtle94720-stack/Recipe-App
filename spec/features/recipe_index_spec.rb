require 'rails_helper'

describe 'Recipe index page', type: :feature do
  before :each do
    login_user

    @user = User.first
    @user.recipes.create(name: 'Recipe1', description: 'Description1', preparation_time: 10, cooking_time: 10, public: true)
    @user.recipes.create(name: 'Recipe2', description: 'Description2', preparation_time: 10, cooking_time: 10, public: true)
    @user.recipes.create(name: 'Recipe3', description: 'Description3', preparation_time: 10, cooking_time: 10, public: true)

    visit recipes_path
  end

  it 'I can see the title of the page.' do
    expect(page).to have_content 'My Recipes'
  end

  it 'I can see the name of all recipes.' do
    expect(page).to have_content 'Recipe1'
    expect(page).to have_content 'Recipe2'
    expect(page).to have_content 'Recipe3'
  end

  it 'I can see the description of all recipes.' do
    expect(page).to have_content 'Description1'
    expect(page).to have_content 'Description2'
    expect(page).to have_content 'Description3'
  end

  it 'If user clicks Remove link, the recipe is deleted.' do
    click_link 'Remove', match: :first
    expect(page).to have_content 'Recipe was successfully destroyed.'
  end

  it 'If user clicks New Recipe link, should redirect to New Recipe Path' do
    click_link 'New Recipe'

    expect(page).to have_current_path(new_recipe_path)
  end
end
