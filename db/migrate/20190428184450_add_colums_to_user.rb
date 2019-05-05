class AddColumsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :email, :string
    add_column :users, :password_digest, :string
    rename_column :users, :name, :username
    add_index :users, :email, unique: true
  end
end
