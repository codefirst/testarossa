require 'rails_helper'

RSpec.describe TestCasesController, :type => :controller do

  before do
    user = User.new(name: 'name', nickname: 'nickname')
    user.save
    sign_in user
    @project = Project.create(name: 'name')
  end

  # This should return the minimal set of attributes required to create a valid
  # TestCase. As you add validations to TestCase, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TestCasesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all test_cases as @test_cases" do
      test_case = TestCase.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:test_cases)).to eq([test_case])
    end
  end

  describe "GET show" do
    it "assigns the requested test_case as @test_case" do
      test_case = TestCase.create! valid_attributes
      get :show, {:id => test_case.to_param}, valid_session
      expect(assigns(:test_case)).to eq(test_case)
    end
  end

  describe "GET new" do
    it "assigns a new test_case as @test_case" do
      get :new, {:project_id => @project.id}, valid_session
      expect(assigns(:test_case)).to be_a_new(TestCase)
    end
  end

  describe "GET edit" do
    it "assigns the requested test_case as @test_case" do
      test_case = TestCase.create! valid_attributes
      get :edit, {:id => test_case.to_param}, valid_session
      expect(assigns(:test_case)).to eq(test_case)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new TestCase" do
        expect {
          post :create, {:test_case => valid_attributes}, valid_session
        }.to change(TestCase, :count).by(1)
      end

      it "assigns a newly created test_case as @test_case" do
        post :create, {:test_case => valid_attributes}, valid_session
        expect(assigns(:test_case)).to be_a(TestCase)
        expect(assigns(:test_case)).to be_persisted
      end

      it "redirects to the created test_case" do
        post :create, {:test_case => valid_attributes}, valid_session
        expect(response).to redirect_to(TestCase.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved test_case as @test_case" do
        post :create, {:test_case => invalid_attributes}, valid_session
        expect(assigns(:test_case)).to be_a_new(TestCase)
      end

      it "re-renders the 'new' template" do
        post :create, {:test_case => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested test_case" do
        test_case = TestCase.create! valid_attributes
        put :update, {:id => test_case.to_param, :test_case => new_attributes}, valid_session
        test_case.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested test_case as @test_case" do
        test_case = TestCase.create! valid_attributes
        put :update, {:id => test_case.to_param, :test_case => valid_attributes}, valid_session
        expect(assigns(:test_case)).to eq(test_case)
      end

      it "redirects to the test_case" do
        test_case = TestCase.create! valid_attributes
        put :update, {:id => test_case.to_param, :test_case => valid_attributes}, valid_session
        expect(response).to redirect_to(test_case)
      end
    end

    describe "with invalid params" do
      it "assigns the test_case as @test_case" do
        test_case = TestCase.create! valid_attributes
        put :update, {:id => test_case.to_param, :test_case => invalid_attributes}, valid_session
        expect(assigns(:test_case)).to eq(test_case)
      end

      it "re-renders the 'edit' template" do
        test_case = TestCase.create! valid_attributes
        put :update, {:id => test_case.to_param, :test_case => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested test_case" do
      test_case = TestCase.create! valid_attributes
      expect {
        delete :destroy, {:id => test_case.to_param}, valid_session
      }.to change(TestCase, :count).by(-1)
    end

    it "redirects to the test_cases list" do
      test_case = TestCase.create! valid_attributes
      delete :destroy, {:id => test_case.to_param}, valid_session
      expect(response).to redirect_to(test_cases_url)
    end
  end

end
