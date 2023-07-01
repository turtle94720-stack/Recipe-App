class AddImageToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :image, :string, default: 'https://images.pexels.com/photos/4551832/pexels-photo-4551832.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  end
end
