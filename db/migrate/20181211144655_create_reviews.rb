class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.string :content
      t.integer :hospitality_score
      t.string :ambience
      t.integer :ambience_score

      t.timestamps
    end
  end
end
