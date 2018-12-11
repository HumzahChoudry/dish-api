class CreateRestaurantTags < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurant_tags do |t|
      t.integer :restaurant_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
