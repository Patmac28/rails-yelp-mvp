class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :name
      t.integer :rating
      t.string :content
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
