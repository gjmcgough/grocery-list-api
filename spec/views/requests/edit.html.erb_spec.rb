require 'rails_helper'

RSpec.describe "requests/edit", :type => :view do
  before(:each) do
    @request = assign(:request, Request.create!(
      :grocery_list_id => 1,
      :subscriber_id => 1,
      :null => ""
    ))
  end

  it "renders the edit request form" do
    render

    assert_select "form[action=?][method=?]", request_path(@request), "post" do

      assert_select "input#request_grocery_list_id[name=?]", "request[grocery_list_id]"

      assert_select "input#request_subscriber_id[name=?]", "request[subscriber_id]"

      assert_select "input#request_null[name=?]", "request[null]"
    end
  end
end
