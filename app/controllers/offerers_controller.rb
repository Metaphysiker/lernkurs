class OfferersController < ApplicationController
  before_action :set_offerer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :new, :create, :process_to_create_home_offer, :add_offerer]
  before_action :is_user_allowed?, except: [:show, :new, :create, :process_to_create_home_offer, :add_offerer]

  include ApplicationHelper

  # GET /offerers
  # GET /offerers.json
  def index
    @offerers = Offerer.all
  end

  # GET /offerers/1
  # GET /offerers/1.json
  def show
    response.headers["X-FRAME-OPTIONS"] = "ALLOWALL"
    render
  end

  # GET /offerers/new
  def new
    @offerer = Offerer.new
    #@offerer.home_offers.build
  end

  # GET /offerers/1/edit
  def edit

  end

  def process_to_create_home_offer
    #cookies.signed.encrypted[:stinah_offerer_] = { value: "XJ-122", expires: 24.hour.from_now }

    @offerer = Offerer.new
    response.headers["X-FRAME-OPTIONS"] = "ALLOWALL"
    render
  end

  def add_offerer
    @offerer = Offerer.new(offerer_params)
    #byebug
    respond_to do |format|
      if @offerer.save
        flash[:notice] = "Angaben wurde eingetragen!"
        format.js #{ redirect_to offerer_path(@offerer) }
        format.html { redirect_to offerer_path(@offerer) }
      else
        format.js
        #format.html { render :process_to_create_home_offer }
      end
    end

    cookies.encrypted[:stinah_offerer_id] = { value: @offerer.id, expires: 24.hours.from_now }
  end

  # POST /offerers
  # POST /offerers.json
  def create
    @offerer = Offerer.new(offerer_params)
    #byebug

    respond_to do |format|
      if @offerer.save
        format.html { redirect_to @offerer, notice: 'Offerer was successfully created.' }
        format.json { render :show, status: :created, location: @offerer }
      else
        format.html { render :new }
        format.json { render json: @offerer.errors, status: :unprocessable_entity }
      end
    end
    #byebug
  end

  # PATCH/PUT /offerers/1
  # PATCH/PUT /offerers/1.json
  def update
    respond_to do |format|
      if @offerer.update(offerer_params)
        format.html { redirect_to @offerer, notice: 'Offerer was successfully updated.' }
        format.json { render :show, status: :ok, location: @offerer }
      else
        format.html { render :edit }
        format.json { render json: @offerer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offerers/1
  # DELETE /offerers/1.json
  def destroy
    @offerer.destroy
    respond_to do |format|
      format.html { redirect_to offerers_url, notice: 'Offerer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def is_user_allowed?
    unless is_current_user_admin? || is_current_user_stinah?
      #raise "not authorized"
      sign_out current_user
      flash[:notice] = "Sie sind nicht authorisiert!"
      redirect_to root_path
    end
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_offerer
      @offerer = Offerer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offerer_params
      params.require(:offerer).permit(:firstname, :lastname, :street, :city, :plz, :phone, :email, :year, :experience, :motivation, :plans, :privacy_statement, home_offers_attributes: [:id, :species, :race, :age, :min_age, :max_age, :size, :min_size, :max_size, :gender, :castrated, :rideable, :stable, :stable_alt, :from_then_on])
    end
end
