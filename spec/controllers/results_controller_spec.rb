require 'rails_helper'

RSpec.describe ResultsController, :type => :controller do

  before do
    user = User.new(name: 'name', nickname: 'nickname')
    user.save
    sign_in user
    @project = Project.create(name: 'name')
    @plan = Plan.create(title: 'plan title', project_id: @project.id)
  end

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all results as @results" do
      result = Result.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:results)).to eq([result])
    end
  end

  describe "GET show" do
    it "assigns the requested result as @result" do
      result = Result.create! valid_attributes
      get :show, {:id => result.to_param}, valid_session
      expect(assigns(:result)).to eq(result)
    end
  end

  describe "GET new" do
    it "assigns a new result as @result" do
      get :new, {:project_id => @project.id, :plan_id => @plan.id}, valid_session
      expect(assigns(:result)).to be_a_new(Result)
    end
  end

  describe "GET edit" do
    it "assigns the requested result as @result" do
      result = Result.create! valid_attributes
      get :edit, {:id => result.to_param}, valid_session
      expect(assigns(:result)).to eq(result)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Result" do
        expect {
          post :create, {:result => valid_attributes}, valid_session
        }.to change(Result, :count).by(1)
      end

      it "assigns a newly created result as @result" do
        post :create, {:result => valid_attributes}, valid_session
        expect(assigns(:result)).to be_a(Result)
        expect(assigns(:result)).to be_persisted
      end

      it "redirects to the created result" do
        post :create, {:result => valid_attributes}, valid_session
        expect(response).to redirect_to(Result.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved result as @result" do
        post :create, {:result => invalid_attributes}, valid_session
        expect(assigns(:result)).to be_a_new(Result)
      end

      it "re-renders the 'new' template" do
        post :create, {:result => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested result" do
        result = Result.create! valid_attributes
        put :update, {:id => result.to_param, :result => new_attributes}, valid_session
        result.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested result as @result" do
        result = Result.create! valid_attributes
        put :update, {:id => result.to_param, :result => valid_attributes}, valid_session
        expect(assigns(:result)).to eq(result)
      end

      it "redirects to the result" do
        result = Result.create! valid_attributes
        put :update, {:id => result.to_param, :result => valid_attributes}, valid_session
        expect(response).to redirect_to(result)
      end
    end

    describe "with invalid params" do
      it "assigns the result as @result" do
        result = Result.create! valid_attributes
        put :update, {:id => result.to_param, :result => invalid_attributes}, valid_session
        expect(assigns(:result)).to eq(result)
      end

      it "re-renders the 'edit' template" do
        result = Result.create! valid_attributes
        put :update, {:id => result.to_param, :result => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested result" do
      result = Result.create! valid_attributes
      expect {
        delete :destroy, {:id => result.to_param}, valid_session
      }.to change(Result, :count).by(-1)
    end

    it "redirects to the results list" do
      result = Result.create! valid_attributes
      delete :destroy, {:id => result.to_param}, valid_session
      expect(response).to redirect_to(results_url)
    end
  end

end
