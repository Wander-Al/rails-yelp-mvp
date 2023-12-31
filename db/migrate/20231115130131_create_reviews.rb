class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :content
      # t.integer :restaurant_id
      t.references :restaurant, null: false, foreign_key: true
      t.timestamps
    end
  end
end
