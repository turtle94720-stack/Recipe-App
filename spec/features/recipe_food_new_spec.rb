require 'rails_helper'

describe 'RecipeFood new page', type: :feature do
  let(:locale) { :en }

  before :each do
    login_user

    @user = User.first
    @user.foods.create(name: 'Food1', quantity: 1, measurement_unit: 'kg', price: 10)
    @recipe = @user.recipes.create(name: 'Recipe1', description: 'Description1', preparation_time: 10, cooking_time: 10, public: true)

    visit new_recipe_recipe_food_path(@recipe)
  end

  it 'I can see the title of the page.' do
    expect(page).to have_content 'Add new ingredient to: Recipe1'
  end

  it 'I can see the food field.' do
    expect(page).to have_field 'recipe_food_food_id'
  end

  it 'I can see the quantity field.' do
    expect(page).to have_field 'recipe_food_quantity'
  end

  it 'If user fill all fields and click Add Ingredient button, should redirect to Recipe Path' do
    select 'Food1', from: 'recipe_food_food_id'
    fill_in 'recipe_food_quantity', with: 1

    click_button I18n.t('recipe_foods.new.submit')

    expect(page).to have_current_path(recipe_path(@recipe))
  end
end
