class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.text "content"
      t.integer "rating"
      t.integer "restaurant_id", null: false
      t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"

      t.timestamps
    end
  end
end
