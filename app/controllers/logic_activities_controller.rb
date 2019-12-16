class LogicActivitiesController < ApplicationController
  before_action :set_logic_activity, only: [:show, :edit, :update, :destroy]

  # GET /logic_activities
  # GET /logic_activities.json
  def index
    @logic_activities = LogicActivity.all
  end

  # GET /logic_activities/1
  # GET /logic_activities/1.json
  def show
  end

  # GET /logic_activities/new
  def new
    @logic_activity = LogicActivity.new
  end

  # GET /logic_activities/1/edit
  def edit
  end

  # POST /logic_activities
  # POST /logic_activities.json
  def create
    @logic_activity = LogicActivity.new(logic_activity_params)

    respond_to do |format|
      if @logic_activity.save
        format.html { redirect_to @logic_activity, notice: 'Logic activity was successfully created.' }
        format.json { render :show, status: :created, location: @logic_activity }
      else
        format.html { render :new }
        format.json { render json: @logic_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /logic_activities/1
  # PATCH/PUT /logic_activities/1.json
  def update
    respond_to do |format|
      if @logic_activity.update(logic_activity_params)
        format.html { redirect_to @logic_activity, notice: 'Logic activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @logic_activity }
      else
        format.html { render :edit }
        format.json { render json: @logic_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /logic_activities/1
  # DELETE /logic_activities/1.json
  def destroy
    @logic_activity.destroy
    respond_to do |format|
      format.html { redirect_to logic_activities_url, notice: 'Logic activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add_logic_activity
    exercise = params[:exercise].to_s
    correctness = params[:correctness].to_s
    LogicActivity.create(exercise: exercise, correctness: correctness)

    head :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_logic_activity
      @logic_activity = LogicActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def logic_activity_params
      params.require(:logic_activity).permit(:exercise, :correctness)
    end
end
