class ActualAnswersController < ApplicationController
  before_action :set_actual_answer, only: [:show, :edit, :update, :destroy]

  # GET /actual_answers
  # GET /actual_answers.json
  def index
    @actual_answers = ActualAnswer.all
  end

  # GET /actual_answers/1
  # GET /actual_answers/1.json
  def show
  end

  # GET /actual_answers/new
  def new
    @actual_answer = ActualAnswer.new
  end

  # GET /actual_answers/1/edit
  def edit
  end

  # POST /actual_answers
  # POST /actual_answers.json
  def create
    @actual_answer = ActualAnswer.new(actual_answer_params)

    respond_to do |format|
      if @actual_answer.save
        format.html { redirect_to @actual_answer, notice: 'Actual answer was successfully created.' }
        format.json { render :show, status: :created, location: @actual_answer }
      else
        format.html { render :new }
        format.json { render json: @actual_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actual_answers/1
  # PATCH/PUT /actual_answers/1.json
  def update
    respond_to do |format|
      if @actual_answer.update(actual_answer_params)
        format.html { redirect_to @actual_answer, notice: 'Actual answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @actual_answer }
      else
        format.html { render :edit }
        format.json { render json: @actual_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actual_answers/1
  # DELETE /actual_answers/1.json
  def destroy
    @actual_answer.destroy
    respond_to do |format|
      format.html { redirect_to actual_answers_url, notice: 'Actual answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actual_answer
      @actual_answer = ActualAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actual_answer_params
      params.require(:actual_answer).permit(:question_id, :possible_answer_id, :next_question_id, :assessment_id, :answer_text)
    end
end
