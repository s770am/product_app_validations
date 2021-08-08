class Changenameforuser < ActiveRecord::Migration[6.1]
  def change
    change_table :reviews do |t|
      t.rename :user, :user_id
    end
  end
end
