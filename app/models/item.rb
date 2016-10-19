class Item < ActiveRecord::Base
  belongs_to :grocery_list
  belongs_to :pantry
  belongs_to :user
end
