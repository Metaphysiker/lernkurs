class StaticPagesController < ApplicationController
  def welcome
    @courses = Course.all.order(:order)
    cookies.signed[:user_id] = 10
    cookies[:progress] = "Epic!"
  end

  def course_overview
    @courses = Course.all.order(:order)
  end

  def textversion

    @course = Course.find(params[:id])
  end
end
