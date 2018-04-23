class PossibleActionPlansController < ApplicationController
  before_action :set_possible_action_plan, only: [:show, :edit, :update, :destroy]

  # GET /possible_action_plans
  # GET /possible_action_plans.json
  def index
    @possible_action_plans = PossibleActionPlan.all
  end

  # GET /possible_action_plans/1
  # GET /possible_action_plans/1.json
  def show
  end

  # GET /possible_action_plans/new
  def new
    @possible_action_plan = PossibleActionPlan.new
  end

  # GET /possible_action_plans/1/edit
  def edit
  end

  # POST /possible_action_plans
  # POST /possible_action_plans.json
  def create
    @possible_action_plan = PossibleActionPlan.new(possible_action_plan_params)

    respond_to do |format|
      if @possible_action_plan.save
        format.html { redirect_to @possible_action_plan, notice: 'Possible action plan was successfully created.' }
        format.json { render :show, status: :created, location: @possible_action_plan }
      else
        format.html { render :new }
        format.json { render json: @possible_action_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /possible_action_plans/1
  # PATCH/PUT /possible_action_plans/1.json
  def update
    respond_to do |format|
      if @possible_action_plan.update(possible_action_plan_params)
        format.html { redirect_to @possible_action_plan, notice: 'Possible action plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @possible_action_plan }
      else
        format.html { render :edit }
        format.json { render json: @possible_action_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /possible_action_plans/1
  # DELETE /possible_action_plans/1.json
  def destroy
    @possible_action_plan.destroy
    respond_to do |format|
      format.html { redirect_to possible_action_plans_url, notice: 'Possible action plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_possible_action_plan
      @possible_action_plan = PossibleActionPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def possible_action_plan_params
      params.require(:possible_action_plan).permit(:question_id, :possible_answer_id, :plan_text, :order)
    end
end
