class ActualActionPlansController < ApplicationController
  before_action :set_actual_action_plan, only: [:show, :edit, :update, :destroy]

  # GET /actual_action_plans
  # GET /actual_action_plans.json
  def index
    @actual_action_plans = ActualActionPlan.all
  end

  # GET /actual_action_plans/1
  # GET /actual_action_plans/1.json
  def show
  end

  # GET /actual_action_plans/new
  def new
    @actual_action_plan = ActualActionPlan.new
  end

  # GET /actual_action_plans/1/edit
  def edit
  end

  # POST /actual_action_plans
  # POST /actual_action_plans.json
  def create
    @actual_action_plan = ActualActionPlan.new(actual_action_plan_params)

    respond_to do |format|
      if @actual_action_plan.save
        format.html { redirect_to @actual_action_plan, notice: 'Actual action plan was successfully created.' }
        format.json { render :show, status: :created, location: @actual_action_plan }
      else
        format.html { render :new }
        format.json { render json: @actual_action_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actual_action_plans/1
  # PATCH/PUT /actual_action_plans/1.json
  def update
    respond_to do |format|
      if @actual_action_plan.update(actual_action_plan_params)
        format.html { redirect_to @actual_action_plan, notice: 'Actual action plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @actual_action_plan }
      else
        format.html { render :edit }
        format.json { render json: @actual_action_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actual_action_plans/1
  # DELETE /actual_action_plans/1.json
  def destroy
    @actual_action_plan.destroy
    respond_to do |format|
      format.html { redirect_to actual_action_plans_url, notice: 'Actual action plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actual_action_plan
      @actual_action_plan = ActualActionPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actual_action_plan_params
      params.require(:actual_action_plan).permit(:assessment_id, :possible_action_plan_id)
    end
end
