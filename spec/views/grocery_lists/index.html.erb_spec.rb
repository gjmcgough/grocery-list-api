require 'rails_helper'

RSpec.describe "grocery_lists/index", :type => :view do
  before(:each) do
    assign(:grocery_lists, [
      GroceryList.create!(
        :name => "Name"
      ),
      GroceryList.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of grocery_lists" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
