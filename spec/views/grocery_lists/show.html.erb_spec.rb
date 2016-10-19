require 'rails_helper'

RSpec.describe "grocery_lists/show", :type => :view do
  before(:each) do
    @grocery_list = assign(:grocery_list, GroceryList.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
