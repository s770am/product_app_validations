class ChangeUserFromReviews < ActiveRecord::Migration[6.1]
  def change
    change_column :reviews, :user, :integer
  end
end
