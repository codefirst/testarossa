class TestcasesController < ApplicationController
  before_action :set_testcase, only: [:show, :edit, :update, :destroy]
  before_action :set_project
  before_action :set_plan

  def index
    @testcases = Testcase.all
  end

  def show
  end

  def new
    @testcase = Testcase.new
  end

  def edit
  end

  def create
    @testcase = Testcase.new(testcase_params)

    respond_to do |format|
      if @testcase.save
        format.html { redirect_to [@project, @plan, @testcase], notice: 'Testcase was successfully created.' }
        format.json { render :show, status: :created, location: @testcase }
      else
        format.html { render :new }
        format.json { render json: @testcase.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @testcase.update(testcase_params)
        format.html { redirect_to [@project, @plan, @testcase], notice: 'Testcase was successfully updated.' }
        format.json { render :show, status: :ok, location: @testcase}
      else
        format.html { render :edit }
        format.json { render json: @testcase.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @testcase.destroy
    respond_to do |format|
      format.html { redirect_to project_plan_testcases_path(@project, @plan), notice: 'Testcase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testcase
      @testcase= Testcase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testcase_params
      params.require(:testcase).permit(:title, :description, :sort)
    end

    def set_project
      @project = Project.find(params[:project_id])
    end

    def set_plan
      @plan = Plan.find(params[:plan_id])
    end
end
