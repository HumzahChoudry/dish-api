class AllowNullsToReviewColumns < ActiveRecord::Migration[5.2]
  def change
    change_column :reviews, :hospitality_score, :integer, :null => true
    change_column :reviews, :ambience_score, :integer, :null => true
    change_column :reviews, :ambience, :string, :null => true
  end
end
