require "rails_helper"

RSpec.describe TestCaseStepsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/test_case_steps").to route_to("test_case_steps#index")
    end

    it "routes to #new" do
      expect(:get => "/test_case_steps/new").to route_to("test_case_steps#new")
    end

    it "routes to #show" do
      expect(:get => "/test_case_steps/1").to route_to("test_case_steps#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/test_case_steps/1/edit").to route_to("test_case_steps#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/test_case_steps").to route_to("test_case_steps#create")
    end

    it "routes to #update" do
      expect(:put => "/test_case_steps/1").to route_to("test_case_steps#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/test_case_steps/1").to route_to("test_case_steps#destroy", :id => "1")
    end

  end
end
