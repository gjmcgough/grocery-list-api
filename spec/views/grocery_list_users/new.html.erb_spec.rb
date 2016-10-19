require 'rails_helper'

RSpec.describe "grocery_list_users/new", :type => :view do
  before(:each) do
    assign(:grocery_list_user, GroceryListUser.new(
      :user_id => 1,
      :grocery_list_id => 1
    ))
  end

  it "renders new grocery_list_user form" do
    render

    assert_select "form[action=?][method=?]", grocery_list_users_path, "post" do

      assert_select "input#grocery_list_user_user_id[name=?]", "grocery_list_user[user_id]"

      assert_select "input#grocery_list_user_grocery_list_id[name=?]", "grocery_list_user[grocery_list_id]"
    end
  end
end
