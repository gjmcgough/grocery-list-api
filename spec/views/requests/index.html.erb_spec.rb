require 'rails_helper'

RSpec.describe "requests/index", :type => :view do
  before(:each) do
    assign(:requests, [
      Request.create!(
        :grocery_list_id => 1,
        :subscriber_id => 2,
        :null => ""
      ),
      Request.create!(
        :grocery_list_id => 1,
        :subscriber_id => 2,
        :null => ""
      )
    ])
  end

  it "renders a list of requests" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
