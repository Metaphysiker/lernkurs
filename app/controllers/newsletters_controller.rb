class NewslettersController < ApplicationController
  before_action :set_newsletter, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!, except: [:new, :add_newsletter_to_list, :newsletter_box, :good_bye]
  before_action :is_user_allowed?, except: [:new, :add_newsletter_to_list, :newsletter_box, :good_bye]

  include ApplicationHelper
  # GET /newsletters
  # GET /newsletters.json
  def index
    @newsletters = Newsletter.all
  end

  # GET /newsletters/1
  # GET /newsletters/1.json
  def show
  end

  # GET /newsletters/new
  def new
    @newsletter = Newsletter.new
  end

  # GET /newsletters/1/edit
  def edit
  end

  # POST /newsletters
  # POST /newsletters.json
  def create
    @newsletter = Newsletter.new(newsletter_params)

    respond_to do |format|
      if @newsletter.save
        format.html { redirect_to @newsletter, notice: 'Newsletter was successfully created.' }
        format.json { render :show, status: :created, location: @newsletter }
      else
        format.html { render :new }
        format.json { render json: @newsletter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newsletters/1
  # PATCH/PUT /newsletters/1.json
  def update
    respond_to do |format|
      if @newsletter.update(newsletter_params)
        format.html { redirect_to @newsletter, notice: 'Newsletter was successfully updated.' }
        format.json { render :show, status: :ok, location: @newsletter }
      else
        format.html { render :edit }
        format.json { render json: @newsletter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newsletters/1
  # DELETE /newsletters/1.json
  def destroy
    @newsletter.destroy
    respond_to do |format|
      format.html { redirect_to newsletters_url, notice: 'Newsletter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def newsletter_box
    @purpose = params[:purpose].to_s
    @text = params[:text].to_s
    @footer = params[:footer].to_s

    response.headers["X-FRAME-OPTIONS"] = "ALLOW-FROM https://www.philosophie.ch/"
    render
  end

  def good_bye

  end

  def add_newsletter_to_list
  @newsletter = Newsletter.new(newsletter_params)

    respond_to do |format|
      if @newsletter.save
        format.js
      else
        format.js
      end
    end
  end

  def remove_newsletter_from_list
    @newsletter = Newsletter.where(email: params[:email]).last

    @newsletter.delete unless Newsletter.nil?

    redirect_to good_bye_path, notice: 'e-Mail-Adresse wurde gelöscht.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newsletter
      @newsletter = Newsletter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newsletter_params
      params.require(:newsletter).permit(:email, :purpose)
    end

    def is_user_allowed?
      if !current_user.nil?
        unless is_current_user_admin?
          #raise "Unauthorized User"
          sign_out current_user
          flash[:notice] = "Sie sind nicht authorisiert!"
          redirect_to new_user_session_path
        end
      end
    end
end
