class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_action :set_attendance, only: [:show, :edit, :update, :destroy]

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all.order(:order)
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    @page_title = @course.title
    @page_description = @course.description
    @page_keywords    = @course.keywords

    if @attendance.current_slide > @course.slides.count
      @current_slide = 0
    elsif -1 > @attendance.current_slide
      @current_slide = 0
    else
      @current_slide = @attendance.current_slide
    end

    @account.update(current_course_id: @course.id)
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def render_slidex
    @course = Course.find(params[:id])
    @current_slide = params[:current_slide].to_i
    render partial: "slides/courses/#{@course.topic}/#{@course.title.parameterize}/#{@course.slides[@current_slide]}"
  end

  def slide
    @course = Course.find(params[:id])
    @current_slide = params[:current_slide].to_i
  end

  def navigation_buttons
    @course = Course.find(params[:id])
    @current_slide = params[:current_slide].to_i
  end

  def hulu
    @hulu = "hulu"
  end

  def set_current_slide
    course_id = params[:course_id].to_i
    number_of_slide = params[:number_of_slide].to_i

    @account.attendances.where(course_id: course_id).first.update(current_slide: number_of_slide)
    head :ok
  end

  def set_status
    course_id = params[:course_id].to_i
    status = params[:status].to_s

    @account.attendances.where(course_id: course_id).first.update(status: status)
    head :ok
  end

  def set_result1
    course_id = params[:course_id].to_i
    result = params[:result].to_s

    @account.attendances.where(course_id: course_id).first.update(result1: result)
    head :ok
  end

  def set_orden
    course_id = params[:course_id].to_i
    orden = params[:orden].to_s

    @account.attendances.where(course_id: course_id).first.update(orden: orden)
    head :ok
  end

  def add_points_to_course
    course_id = params[:course_id].to_i
    exercise = params[:exercise].to_s
    points = params[:points].to_i

    attendance = @account.attendances.where(course_id: course_id).first

    attendance.exercises[exercise] = points
    attendance.save
    head :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.friendly.find(params[:id])
      #@course = Course.find_by_slug(params[:slug])
    end

    def set_attendance
      unless @account.courses.include?(@course)
        @account.courses << @course
      end

      @attendance = @account.attendances.where(course_id: @course.id).first
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.fetch(:course, {})
    end
end
