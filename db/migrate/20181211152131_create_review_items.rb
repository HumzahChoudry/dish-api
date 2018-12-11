class CreateReviewItems < ActiveRecord::Migration[5.2]
  def change
    create_table :review_items do |t|
      t.integer :review_id
      t.integer :food_item_id
      t.string :content
      t.integer :rating

      t.timestamps
    end
  end
end
