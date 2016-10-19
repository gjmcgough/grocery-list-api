require 'rails_helper'

RSpec.describe "grocery_lists/new", :type => :view do
  before(:each) do
    assign(:grocery_list, GroceryList.new(
      :name => "MyString"
    ))
  end

  it "renders new grocery_list form" do
    render

    assert_select "form[action=?][method=?]", grocery_lists_path, "post" do

      assert_select "input#grocery_list_name[name=?]", "grocery_list[name]"
    end
  end
end
