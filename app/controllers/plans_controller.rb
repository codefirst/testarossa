class PlansController < ApplicationController
  before_action :set_plan, only: [:show, :edit, :update, :destroy]
  before_action :set_project

  def index
    @plans = Plan.all
  end

  def show
  end

  def new
    @plan = Plan.new
    @project = Project.first
  end

  def edit
  end

  def create
    @plan = Plan.new(plan_params)

    respond_to do |format|
      if @plan.save
        format.html { redirect_to [@project, @plan], notice: 'Plan was successfully created.' }
        format.json { render :show, status: :created, location: @plan }
      else
        format.html { render :new }
        format.json { render json: @plan.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @plan.update(plan_params)
        format.html { redirect_to @plan, notice: 'Plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @plan }
      else
        format.html { render :edit }
        format.json { render json: @plan.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @plan.destroy
    respond_to do |format|
      format.html { redirect_to plans_url, notice: 'Plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plan
      @plan = Plan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plan_params
      params.require(:plan).permit(:title, :description)
    end

    def set_project
      @project = Project.find(params[:project_id])
    end
end
