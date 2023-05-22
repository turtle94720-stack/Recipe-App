class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name, null: false, allow_blank: false
      t.integer :preparation_time, null: false, default: 0
      t.integer :cooking_time, null: false, default: 0
      t.string :description, null: false, allow_blank: false
      t.boolean :public, null: false, default: false

      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
