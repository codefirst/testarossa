require "rails_helper"

RSpec.describe TestResultsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/projects/1/tests/2/results").to route_to("test_results#index", :project_id => "1", :test_case_id => "2")
    end

    it "routes to #new" do
      expect(:get => "/projects/1/tests/2/results/new").to route_to("test_results#new", :project_id => "1", :test_case_id => "2")
    end

    it "routes to #show" do
      expect(:get => "/projects/1/tests/2/results/3").to route_to("test_results#show", :project_id => "1", :test_case_id => "2", :id => "3")
    end

    it "routes to #edit" do
      expect(:get => "/projects/1/tests/2/results/3/edit").to route_to("test_results#edit", :project_id => "1", :test_case_id => "2", :id => "3")
    end

    it "routes to #create" do
      expect(:post => "/projects/1/tests/2/results").to route_to("test_results#create", :project_id => "1", :test_case_id => "2")
    end

    it "routes to #update" do
      expect(:put => "/projects/1/tests/2/results/3").to route_to("test_results#update", :project_id => "1", :test_case_id => "2", :id => "3")
    end

    it "routes to #destroy" do
      expect(:delete => "/projects/1/tests/2/results/3").to route_to("test_results#destroy", :project_id => "1", :test_case_id => "2", :id => "3")
    end

  end
end
