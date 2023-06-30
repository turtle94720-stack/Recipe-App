class AddRolesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :role, :string, default: 'user', null: false
  end
end
