class TracesController < ApplicationController
  before_action :set_trace, only: [:show, :edit, :update, :destroy]
  before_action :set_project
  before_action :set_plan
  before_action :set_result

  def index
    @traces = Trace.all
  end

  def show
  end

  def new
    @trace = Trace.new
  end

  def edit
  end

  def create
    @trace = Trace.new(trace_params)

    respond_to do |format|
      if @trace.save
        format.html { redirect_to [@project, @plan, @result, @trace], notice: 'Trace was successfully created.' }
        format.json { render :show, status: :created, location: @trace }
      else
        format.html { render :new }
        format.json { render json: @trace.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @trace.update(trace_params)
        format.html { redirect_to [@project, @plan, @result, @trace], notice: 'Trace was successfully updated.' }
        format.json { render :show, status: :ok, location: @trace }
      else
        format.html { render :edit }
        format.json { render json: @trace.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @trace.destroy
    respond_to do |format|
      format.html { redirect_to [@project, @plan, @result, @trace], notice: 'Trace was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trace
      @trace = Trace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trace_params
      params.require(:trace).permit(:title, :description, :state, :judgement, :sort)
    end

    def set_project
      @project = Project.find(params[:project_id])
    end

    def set_plan
      @plan = Plan.find(params[:plan_id])
    end

    def set_result
      @result = Result.find(params[:result_id])
    end
end
