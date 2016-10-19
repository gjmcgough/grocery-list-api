require 'rails_helper'

RSpec.describe "requests/show", :type => :view do
  before(:each) do
    @request = assign(:request, Request.create!(
      :grocery_list_id => 1,
      :subscriber_id => 2,
      :null => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
