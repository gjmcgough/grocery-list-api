require 'rails_helper'

RSpec.describe "grocery_list_users/show", :type => :view do
  before(:each) do
    @grocery_list_user = assign(:grocery_list_user, GroceryListUser.create!(
      :user_id => 1,
      :grocery_list_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
