class StaticPagesController < ApplicationController
  def welcome
    @courses = Course.all.order(:order)
    cookies.signed[:user_id] = 10
    cookies[:progress] = "Epic!"
  end

  def overview
    @accounts = Account.all
  end

  def course_overview
    @courses = Course.all.order(:order)
  end

  def textversion

    @course = Course.find(params[:id])

    send_data render_to_string(pdf: "#{@course.title.parameterize}",
                              template: "/static_pages/textversion.html.erb",
                              layout: "/layouts/pdf_layout.html.erb",
                              dpi: 75),
                              filename: "#{@course.title.parameterize}.pdf"

  end

  def test

  end

  def why_ethics

  end
end
