json.extract! request, :id, :grocery_list_id, :subscriber_id, :null, :created_at, :updated_at
json.url request_url(request, format: :json)