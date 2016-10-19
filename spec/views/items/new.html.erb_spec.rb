require 'rails_helper'

RSpec.describe "items/new", :type => :view do
  before(:each) do
    assign(:item, Item.new(
      :name => "MyString",
      :user_id => 1,
      :grocery_list_id => 1
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input#item_name[name=?]", "item[name]"

      assert_select "input#item_user_id[name=?]", "item[user_id]"

      assert_select "input#item_grocery_list_id[name=?]", "item[grocery_list_id]"
    end
  end
end
