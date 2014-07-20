class TestCaseStepResultsController < ApplicationController
  before_action :set_test_case_step_result, only: [:show, :edit, :update, :destroy]

  # GET /test_case_step_results
  # GET /test_case_step_results.json
  def index
    @test_case_step_results = TestCaseStepResult.all
  end

  # GET /test_case_step_results/1
  # GET /test_case_step_results/1.json
  def show
  end

  # GET /test_case_step_results/new
  def new
    @test_case_step_result = TestCaseStepResult.new
  end

  # GET /test_case_step_results/1/edit
  def edit
  end

  # POST /test_case_step_results
  # POST /test_case_step_results.json
  def create
    @test_case_step_result = TestCaseStepResult.new(test_case_step_result_params)

    respond_to do |format|
      if @test_case_step_result.save
        format.html { redirect_to @test_case_step_result, notice: 'Test case step result was successfully created.' }
        format.json { render :show, status: :created, location: @test_case_step_result }
      else
        format.html { render :new }
        format.json { render json: @test_case_step_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_case_step_results/1
  # PATCH/PUT /test_case_step_results/1.json
  def update
    respond_to do |format|
      if @test_case_step_result.update(test_case_step_result_params)
        format.html { redirect_to @test_case_step_result, notice: 'Test case step result was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_case_step_result }
      else
        format.html { render :edit }
        format.json { render json: @test_case_step_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_case_step_results/1
  # DELETE /test_case_step_results/1.json
  def destroy
    @test_case_step_result.destroy
    respond_to do |format|
      format.html { redirect_to test_case_step_results_url, notice: 'Test case step result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_case_step_result
      @test_case_step_result = TestCaseStepResult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_case_step_result_params
      params.require(:test_case_step_result).permit(:title, :description, :state, :result, :sort)
    end
end
