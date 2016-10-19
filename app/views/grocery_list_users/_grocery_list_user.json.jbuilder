json.extract! grocery_list_user, :id, :user_id, :grocery_list_id, :created_at, :updated_at
json.url grocery_list_user_url(grocery_list_user, format: :json)