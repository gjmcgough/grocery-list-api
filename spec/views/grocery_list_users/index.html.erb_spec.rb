require 'rails_helper'

RSpec.describe "grocery_list_users/index", :type => :view do
  before(:each) do
    assign(:grocery_list_users, [
      GroceryListUser.create!(
        :user_id => 1,
        :grocery_list_id => 2
      ),
      GroceryListUser.create!(
        :user_id => 1,
        :grocery_list_id => 2
      )
    ])
  end

  it "renders a list of grocery_list_users" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
