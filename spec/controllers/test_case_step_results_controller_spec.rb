require 'rails_helper'

RSpec.describe TestCaseStepResultsController, :type => :controller do

  before do
    user = User.new(name: 'name', nickname: 'nickname')
    user.save
    sign_in user
  end

  # This should return the minimal set of attributes required to create a valid
  # TestCaseStepResult. As you add validations to TestCaseStepResult, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TestCaseStepResultsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all test_case_step_results as @test_case_step_results" do
      test_case_step_result = TestCaseStepResult.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:test_case_step_results)).to eq([test_case_step_result])
    end
  end

  describe "GET show" do
    it "assigns the requested test_case_step_result as @test_case_step_result" do
      test_case_step_result = TestCaseStepResult.create! valid_attributes
      get :show, {:id => test_case_step_result.to_param}, valid_session
      expect(assigns(:test_case_step_result)).to eq(test_case_step_result)
    end
  end

  describe "GET new" do
    it "assigns a new test_case_step_result as @test_case_step_result" do
      get :new, {}, valid_session
      expect(assigns(:test_case_step_result)).to be_a_new(TestCaseStepResult)
    end
  end

  describe "GET edit" do
    it "assigns the requested test_case_step_result as @test_case_step_result" do
      test_case_step_result = TestCaseStepResult.create! valid_attributes
      get :edit, {:id => test_case_step_result.to_param}, valid_session
      expect(assigns(:test_case_step_result)).to eq(test_case_step_result)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new TestCaseStepResult" do
        expect {
          post :create, {:test_case_step_result => valid_attributes}, valid_session
        }.to change(TestCaseStepResult, :count).by(1)
      end

      it "assigns a newly created test_case_step_result as @test_case_step_result" do
        post :create, {:test_case_step_result => valid_attributes}, valid_session
        expect(assigns(:test_case_step_result)).to be_a(TestCaseStepResult)
        expect(assigns(:test_case_step_result)).to be_persisted
      end

      it "redirects to the created test_case_step_result" do
        post :create, {:test_case_step_result => valid_attributes}, valid_session
        expect(response).to redirect_to(TestCaseStepResult.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved test_case_step_result as @test_case_step_result" do
        post :create, {:test_case_step_result => invalid_attributes}, valid_session
        expect(assigns(:test_case_step_result)).to be_a_new(TestCaseStepResult)
      end

      it "re-renders the 'new' template" do
        post :create, {:test_case_step_result => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested test_case_step_result" do
        test_case_step_result = TestCaseStepResult.create! valid_attributes
        put :update, {:id => test_case_step_result.to_param, :test_case_step_result => new_attributes}, valid_session
        test_case_step_result.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested test_case_step_result as @test_case_step_result" do
        test_case_step_result = TestCaseStepResult.create! valid_attributes
        put :update, {:id => test_case_step_result.to_param, :test_case_step_result => valid_attributes}, valid_session
        expect(assigns(:test_case_step_result)).to eq(test_case_step_result)
      end

      it "redirects to the test_case_step_result" do
        test_case_step_result = TestCaseStepResult.create! valid_attributes
        put :update, {:id => test_case_step_result.to_param, :test_case_step_result => valid_attributes}, valid_session
        expect(response).to redirect_to(test_case_step_result)
      end
    end

    describe "with invalid params" do
      it "assigns the test_case_step_result as @test_case_step_result" do
        test_case_step_result = TestCaseStepResult.create! valid_attributes
        put :update, {:id => test_case_step_result.to_param, :test_case_step_result => invalid_attributes}, valid_session
        expect(assigns(:test_case_step_result)).to eq(test_case_step_result)
      end

      it "re-renders the 'edit' template" do
        test_case_step_result = TestCaseStepResult.create! valid_attributes
        put :update, {:id => test_case_step_result.to_param, :test_case_step_result => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested test_case_step_result" do
      test_case_step_result = TestCaseStepResult.create! valid_attributes
      expect {
        delete :destroy, {:id => test_case_step_result.to_param}, valid_session
      }.to change(TestCaseStepResult, :count).by(-1)
    end

    it "redirects to the test_case_step_results list" do
      test_case_step_result = TestCaseStepResult.create! valid_attributes
      delete :destroy, {:id => test_case_step_result.to_param}, valid_session
      expect(response).to redirect_to(test_case_step_results_url)
    end
  end

end
