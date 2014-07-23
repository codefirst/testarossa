require "rails_helper"

RSpec.describe TestCaseStepResultsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/projects/1/tests/2/results/3/steps").to route_to("test_case_step_results#index", :project_id => "1", :test_case_id => "2", :test_result_id => "3")
    end

    it "routes to #new" do
      expect(:get => "/projects/1/tests/2/results/3/steps/new").to route_to("test_case_step_results#new", :project_id => "1", :test_case_id => "2", :test_result_id => "3")
    end

    it "routes to #show" do
      expect(:get => "/projects/1/tests/2/results/3/steps/4").to route_to("test_case_step_results#show", :project_id => "1", :test_case_id => "2", :test_result_id => "3", :id => "4")
    end

    it "routes to #edit" do
      expect(:get => "/projects/1/tests/2/results/3/steps/4/edit").to route_to("test_case_step_results#edit", :project_id => "1", :test_case_id => "2", :test_result_id => "3", :id => "4")
    end

    it "routes to #create" do
      expect(:post => "/projects/1/tests/2/results/3/steps").to route_to("test_case_step_results#create", :project_id => "1", :test_case_id => "2", :test_result_id => "3")
    end

    it "routes to #update" do
      expect(:put => "/projects/1/tests/2/results/3/steps/4").to route_to("test_case_step_results#update", :project_id => "1", :test_case_id => "2", :test_result_id => "3", :id => "4")
    end

    it "routes to #destroy" do
      expect(:delete => "/projects/1/tests/2/results/3/steps/4").to route_to("test_case_step_results#destroy", :project_id => "1", :test_case_id => "2", :test_result_id => "3", :id => "4")
    end

  end
end
