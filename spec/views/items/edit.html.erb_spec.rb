require 'rails_helper'

RSpec.describe "items/edit", :type => :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :name => "MyString",
      :user_id => 1,
      :grocery_list_id => 1
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input#item_name[name=?]", "item[name]"

      assert_select "input#item_user_id[name=?]", "item[user_id]"

      assert_select "input#item_grocery_list_id[name=?]", "item[grocery_list_id]"
    end
  end
end
