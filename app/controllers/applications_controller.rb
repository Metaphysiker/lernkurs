require 'csv'

class ApplicationsController < ApplicationController
  before_action :set_application, only: [:show, :edit, :update, :destroy]
  # GET /applications
  # GET /applications.json
  def index
    @applications = Application.all
  end

  def applications_to_csv
    #attributes = %w{id description}

  csv = CSV.generate(headers: true) do |csv|
      csv << Application.attribute_names

      Application.all.each do |application|
        csv << Application.attribute_names.map{ |attr| application.send(attr) }
      end
    end

    send_data csv, filename: "applications.csv"
  end

  # GET /applications/1
  # GET /applications/1.json
  def show
  end

  # GET /applications/new
  def new
    @application = Application.new
  end

  # GET /applications/1/edit
  def edit
  end

  # POST /applications
  # POST /applications.json
  def create
    @application = Application.new(application_params)

    respond_to do |format|
      if @application.save
        format.html { redirect_to @application, notice: 'Application was successfully created.' }
        format.json { render :show, status: :created, location: @application }
        format.js
      else
        format.html { render :new }
        format.json { render json: @application.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /applications/1
  # PATCH/PUT /applications/1.json
  def update
    #respond_to do |format|
    #  if @application.update(application_params)
    #    format.html { redirect_to @application, notice: 'Application was successfully updated.' }
    #    format.json { render :show, status: :ok, location: @application }
    #  else
    #    format.html { render :edit }
    #    format.json { render json: @application.errors, status: :unprocessable_entity }
    #  end
    #end
  end

  # DELETE /applications/1
  # DELETE /applications/1.json
  def destroy
    #@application.destroy
    #respond_to do |format|
    #  format.html { redirect_to applications_url, notice: 'Application was successfully destroyed.' }
    #  format.json { head :no_content }
    #end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application
      @application = Application.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def application_params
      params.require(:application).permit(:firstname, :lastname, :street, :city, :plz, :email, :telefon, :payment, :motivation, :expectation, :thoughts, :aboutme, :food, :education, :course)
    end
end
