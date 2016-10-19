class Request < ActiveRecord::Base
  belongs_to :grocery_list
  belongs_to :subscriber, class_name: :User
end
