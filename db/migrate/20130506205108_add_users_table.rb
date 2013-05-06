class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.boolean :is_seller
      t.boolean :is_buyer
      t.timestamps
    end
  end
end