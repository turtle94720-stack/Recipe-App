require 'rails_helper'

describe 'Recipe show page', type: :feature do
  let(:locale) { :en }

  before :each do
    login_user

    @user = User.first
    @recipe = @user.recipes.create(name: 'Recipe1', description: 'Description1', preparation_time: 10, cooking_time: 10, public: true)

    @food1 = @user.foods.create(name: 'Food1', measurement_unit: 'kg', price: 100, quantity: 100)
    @food2 = @user.foods.create(name: 'Food2', measurement_unit: 'kg', price: 100, quantity: 100)

    @recipe.recipe_foods.create(food_id: @food1.id, quantity: 10)
    @recipe.recipe_foods.create(food_id: @food2.id, quantity: 10)

    visit recipe_path(@recipe)
  end

  it 'I can see the title of the page.' do
    expect(page).to have_content 'Recipe1'
  end

  it 'I can see the description of the recipe.' do
    expect(page).to have_content 'Description1'
  end

  it 'I can see the preparation time of the recipe.' do
    expect(page).to have_content 'Preparation time: 10 hours'
  end

  it 'I can see the cooking time of the recipe.' do
    expect(page).to have_content 'Cooking time: 10 hours'
  end

  it 'I can see the ingredients of the recipe.' do
    expect(page).to have_content 'Food1'
    expect(page).to have_content '10 kg'
    expect(page).to have_content 'Food2'
    expect(page).to have_content '10 kg'
  end

  it 'If user clicks Add Ingredient link, should redirect to New Recipe Food Path' do
    click_link I18n.t('recipes.show.add_ingredient')

    expect(page).to have_current_path(new_recipe_recipe_food_path(@recipe))
  end
end
