require "rails_helper"

RSpec.describe GroceryListUsersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/grocery_list_users").to route_to("grocery_list_users#index")
    end

    it "routes to #new" do
      expect(:get => "/grocery_list_users/new").to route_to("grocery_list_users#new")
    end

    it "routes to #show" do
      expect(:get => "/grocery_list_users/1").to route_to("grocery_list_users#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/grocery_list_users/1/edit").to route_to("grocery_list_users#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/grocery_list_users").to route_to("grocery_list_users#create")
    end

    it "routes to #update" do
      expect(:put => "/grocery_list_users/1").to route_to("grocery_list_users#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/grocery_list_users/1").to route_to("grocery_list_users#destroy", :id => "1")
    end

  end
end
