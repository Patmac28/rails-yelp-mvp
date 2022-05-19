class ChangeRatingTypeToReviews < ActiveRecord::Migration[6.1]
  def change
    change_column :reviews, :rating, :text
  end
end
