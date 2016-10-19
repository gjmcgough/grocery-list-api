class CreateGroceryListUsers < ActiveRecord::Migration
  def change
    create_table :grocery_list_users do |t|
      t.integer :user_id, null: false, uniqueness: true
      t.integer :grocery_list_id, false, uniqueness: true
      t.boolean :subscriber, default: false


      t.timestamps null: false
    end
  end
end
