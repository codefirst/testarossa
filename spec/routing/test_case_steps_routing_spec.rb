require "rails_helper"

RSpec.describe TestCaseStepsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/projects/1/tests/2/steps").to route_to("test_case_steps#index", :project_id => "1", :test_case_id => "2")
    end

    it "routes to #new" do
      expect(:get => "/projects/1/tests/2/steps/new").to route_to("test_case_steps#new", :project_id => "1", :test_case_id => "2")
    end

    it "routes to #show" do
      expect(:get => "/projects/1/tests/2/steps/3").to route_to("test_case_steps#show", :project_id => "1", :test_case_id => "2", :id => "3")
    end

    it "routes to #edit" do
      expect(:get => "/projects/1/tests/2/steps/3/edit").to route_to("test_case_steps#edit", :project_id => "1", :test_case_id => "2", :id => "3")
    end

    it "routes to #create" do
      expect(:post => "/projects/1/tests/2/steps").to route_to("test_case_steps#create", :project_id => "1", :test_case_id => "2")
    end

    it "routes to #update" do
      expect(:put => "/projects/1/tests/2/steps/3").to route_to("test_case_steps#update", :project_id => "1", :test_case_id => "2", :id => "3")
    end

    it "routes to #destroy" do
      expect(:delete => "/projects/1/tests/2/steps/3").to route_to("test_case_steps#destroy", :project_id => "1", :test_case_id => "2", :id => "3")
    end

  end
end
