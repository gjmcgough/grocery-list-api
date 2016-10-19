require 'rails_helper'

RSpec.describe "requests/new", :type => :view do
  before(:each) do
    assign(:request, Request.new(
      :grocery_list_id => 1,
      :subscriber_id => 1,
      :null => ""
    ))
  end

  it "renders new request form" do
    render

    assert_select "form[action=?][method=?]", requests_path, "post" do

      assert_select "input#request_grocery_list_id[name=?]", "request[grocery_list_id]"

      assert_select "input#request_subscriber_id[name=?]", "request[subscriber_id]"

      assert_select "input#request_null[name=?]", "request[null]"
    end
  end
end
