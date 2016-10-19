class GroceryList < ActiveRecord::Base
  has_many :grocery_list_users
  has_many :needed_items, class_name: :Item
  has_many :subscribers, through: :grocery_list_users, source: :user
  has_many :pending_requests, class_name: :Request

  belongs_to :host, class_name: :User
end
