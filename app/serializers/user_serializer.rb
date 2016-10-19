class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email

  has_many :needed_items, through: :grocery_lists
  has_many :purchased_items, through: :pantries
  has_many :hosted_grocery_lists, class_name: :GroceryList, foreign_key: :host_id
  has_many :grocery_lists, through: :grocery_list_users
  has_many :pantry_users
  has_many :grocery_list_users
  has_many :subscribers, through: :grocery_lists, source: :users
  has_many :pending_requests, through: :hosted_grocery_lists
  has_many :sent_requests, foreign_key: :subscriber_id, class_name: :User
end
