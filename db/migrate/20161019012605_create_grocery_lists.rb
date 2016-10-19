class CreateGroceryLists < ActiveRecord::Migration
  def change
    create_table :grocery_lists do |t|
      t.string :name, null: false
      t.string :host_id, null: false

      t.timestamps null: false
    end
  end
end
