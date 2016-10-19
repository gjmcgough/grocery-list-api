class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :grocery_list_id, null: false
      t.integer :subscriber_id, null: false

      t.timestamps null: false
    end
  end
end
