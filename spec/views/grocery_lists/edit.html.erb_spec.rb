require 'rails_helper'

RSpec.describe "grocery_lists/edit", :type => :view do
  before(:each) do
    @grocery_list = assign(:grocery_list, GroceryList.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit grocery_list form" do
    render

    assert_select "form[action=?][method=?]", grocery_list_path(@grocery_list), "post" do

      assert_select "input#grocery_list_name[name=?]", "grocery_list[name]"
    end
  end
end
