class StaticPagesController < ApplicationController
  def welcome
    cookies.signed[:user_id] = 10
    cookies[:progress] = "Epic!"
  end

  def course_overview
    @courses = Course.all.order(:order)
  end
end
