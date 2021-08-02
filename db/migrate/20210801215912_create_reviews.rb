class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :user
      t.text :review_text
      t.integer :review_rating
      t.belongs_to  :product
      t.timestamps
    end
  end
end
