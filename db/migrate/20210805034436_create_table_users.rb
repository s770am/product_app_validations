class CreateTableUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :table_users do |t|
      t.string :email
      t.string :password_digest 
      t.string :user_name 
      t.timestamps
    end
  end
end
