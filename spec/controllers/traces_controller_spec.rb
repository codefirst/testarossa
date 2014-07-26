require 'rails_helper'

RSpec.describe TracesController, :type => :controller do

  before do
    user = User.new(name: 'name', nickname: 'nickname')
    user.save
    sign_in user
    @project = Project.create(name: 'name')
    @plan = Plan.create(title: 'test case title', project_id: @project.id)
    @result = Result.create(title: 'result title', plan_id: @plan.id)
  end

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all traces as @traces" do
      trace = Trace.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:traces)).to eq([trace])
    end
  end

  describe "GET show" do
    it "assigns the requested trace as @trace" do
      trace = Trace.create! valid_attributes
      get :show, {:id => trace.to_param}, valid_session
      expect(assigns(:trace)).to eq(trace)
    end
  end

  describe "GET new" do
    it "assigns a new trace as @trace" do
      get :new, {:project_id => @project.id, :plan_id => @plan.id, :result_id => @result.id}, valid_session
      expect(assigns(:trace)).to be_a_new(Trace)
    end
  end

  describe "GET edit" do
    it "assigns the requested trace as @trace" do
      trace = Trace.create! valid_attributes
      get :edit, {:id => trace.to_param}, valid_session
      expect(assigns(:trace)).to eq(trace)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Trace" do
        expect {
          post :create, {:trace => valid_attributes}, valid_session
        }.to change(Trace, :count).by(1)
      end

      it "assigns a newly created trace as @trace" do
        post :create, {:trace => valid_attributes}, valid_session
        expect(assigns(:trace)).to be_a(Trace)
        expect(assigns(:trace)).to be_persisted
      end

      it "redirects to the created trace" do
        post :create, {:trace => valid_attributes}, valid_session
        expect(response).to redirect_to(Trace.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved trace as @trace" do
        post :create, {:trace => invalid_attributes}, valid_session
        expect(assigns(:trace)).to be_a_new(Trace)
      end

      it "re-renders the 'new' template" do
        post :create, {:trace => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested trace" do
        trace = Trace.create! valid_attributes
        put :update, {:id => trace.to_param, :trace => new_attributes}, valid_session
        trace.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested trace as @trace" do
        trace = Trace.create! valid_attributes
        put :update, {:id => trace.to_param, :trace => valid_attributes}, valid_session
        expect(assigns(:trace)).to eq(trace)
      end

      it "redirects to the trace" do
        trace = Trace.create! valid_attributes
        put :update, {:id => trace.to_param, :trace => valid_attributes}, valid_session
        expect(response).to redirect_to(trace)
      end
    end

    describe "with invalid params" do
      it "assigns the trace as @trace" do
        trace = Trace.create! valid_attributes
        put :update, {:id => trace.to_param, :trace => invalid_attributes}, valid_session
        expect(assigns(:trace)).to eq(trace)
      end

      it "re-renders the 'edit' template" do
        trace = Trace.create! valid_attributes
        put :update, {:id => trace.to_param, :trace => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested trace" do
      trace = Trace.create! valid_attributes
      expect {
        delete :destroy, {:id => trace.to_param}, valid_session
      }.to change(Trace, :count).by(-1)
    end

    it "redirects to the traces list" do
      trace = Trace.create! valid_attributes
      delete :destroy, {:id => trace.to_param}, valid_session
      expect(response).to redirect_to(traces_url)
    end
  end

end
