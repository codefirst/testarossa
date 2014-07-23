class TestCaseStepsController < ApplicationController
  before_action :set_test_case_step, only: [:show, :edit, :update, :destroy]
  before_action :set_project
  before_action :set_test_case

  # GET /test_case_steps
  # GET /test_case_steps.json
  def index
    @test_case_steps = TestCaseStep.all
  end

  # GET /test_case_steps/1
  # GET /test_case_steps/1.json
  def show
  end

  # GET /test_case_steps/new
  def new
    @test_case_step = TestCaseStep.new
  end

  # GET /test_case_steps/1/edit
  def edit
  end

  # POST /test_case_steps
  # POST /test_case_steps.json
  def create
    @test_case_step = TestCaseStep.new(test_case_step_params)

    respond_to do |format|
      if @test_case_step.save
        format.html { redirect_to [@project, @test_case, @test_case_step], notice: 'Test case step was successfully created.' }
        format.json { render :show, status: :created, location: @test_case_step }
      else
        format.html { render :new }
        format.json { render json: @test_case_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_case_steps/1
  # PATCH/PUT /test_case_steps/1.json
  def update
    respond_to do |format|
      if @test_case_step.update(test_case_step_params)
        format.html { redirect_to @test_case_step, notice: 'Test case step was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_case_step }
      else
        format.html { render :edit }
        format.json { render json: @test_case_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_case_steps/1
  # DELETE /test_case_steps/1.json
  def destroy
    @test_case_step.destroy
    respond_to do |format|
      format.html { redirect_to test_case_steps_url, notice: 'Test case step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_case_step
      @test_case_step = TestCaseStep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_case_step_params
      params.require(:test_case_step).permit(:title, :description, :sort)
    end

    def set_project
      @project = Project.find(params[:project_id])
    end

    def set_test_case
      @test_case = TestCase.find(params[:test_case_id])
    end
end
