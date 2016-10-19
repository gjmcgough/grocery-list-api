json.extract! item, :id, :name, :user_id, :grocery_list_id, :created_at, :updated_at
json.url item_url(item, format: :json)