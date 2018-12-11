class CreateFoodItemTags < ActiveRecord::Migration[5.2]
  def change
    create_table :food_item_tags do |t|
      t.integer :food_item_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
