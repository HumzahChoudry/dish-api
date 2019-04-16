class UpdateReviewColumns < ActiveRecord::Migration[5.2]
  def change
    rename_column :reviews, :hospitality_score, :hospitality_rating
    rename_column :reviews, :ambience_score, :ambience_rating
  end
end
