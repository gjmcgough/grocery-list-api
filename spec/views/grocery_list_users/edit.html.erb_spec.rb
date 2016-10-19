require 'rails_helper'

RSpec.describe "grocery_list_users/edit", :type => :view do
  before(:each) do
    @grocery_list_user = assign(:grocery_list_user, GroceryListUser.create!(
      :user_id => 1,
      :grocery_list_id => 1
    ))
  end

  it "renders the edit grocery_list_user form" do
    render

    assert_select "form[action=?][method=?]", grocery_list_user_path(@grocery_list_user), "post" do

      assert_select "input#grocery_list_user_user_id[name=?]", "grocery_list_user[user_id]"

      assert_select "input#grocery_list_user_grocery_list_id[name=?]", "grocery_list_user[grocery_list_id]"
    end
  end
end
