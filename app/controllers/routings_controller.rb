class RoutingsController < ApplicationController
  before_action :set_routing, only: [:show, :edit, :update, :destroy]

  # GET /routings
  # GET /routings.json
  def index
    @routings = Routing.all
  end

  # GET /routings/1
  # GET /routings/1.json
  def show
  end

  # GET /routings/new
  def new
    @routing = Routing.new
  end

  # GET /routings/1/edit
  def edit
  end

  # POST /routings
  # POST /routings.json
  def create
    @routing = Routing.new(routing_params)

    respond_to do |format|
      if @routing.save
        format.html { redirect_to @routing, notice: 'Routing was successfully created.' }
        format.json { render :show, status: :created, location: @routing }
      else
        format.html { render :new }
        format.json { render json: @routing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /routings/1
  # PATCH/PUT /routings/1.json
  def update
    respond_to do |format|
      if @routing.update(routing_params)
        format.html { redirect_to @routing, notice: 'Routing was successfully updated.' }
        format.json { render :show, status: :ok, location: @routing }
      else
        format.html { render :edit }
        format.json { render json: @routing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /routings/1
  # DELETE /routings/1.json
  def destroy
    @routing.destroy
    respond_to do |format|
      format.html { redirect_to routings_url, notice: 'Routing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_routing
      @routing = Routing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def routing_params
      params.require(:routing).permit(:question_id, :possible_id, :next_question_id)
    end
end
