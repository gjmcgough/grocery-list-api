class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.integer :user_id, null: false
      t.integer :grocery_list_id

      t.timestamps null: false
    end
  end
end
