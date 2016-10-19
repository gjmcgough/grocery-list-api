require 'rails_helper'

RSpec.describe "GroceryListUsers", :type => :request do
  describe "GET /grocery_list_users" do
    it "works! (now write some real specs)" do
      get grocery_list_users_path
      expect(response).to have_http_status(200)
    end
  end
end
