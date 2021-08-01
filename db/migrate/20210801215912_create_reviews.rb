class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :user
      t.text :review_text
      t.integer :product_id
      t.integer :review_rating
      t.timestamps
    end
  end
end
