class StaticPagesController < ApplicationController
  def welcome
    @page_title = "Was ist Ethik? Finde es heraus in diesem interaktiven Lernkurs!"
    @page_description = "Was ist Ethik? Finde es heraus in diesem interaktiven Lernkurs! "
    @page_keywords    = "Lernkurs, Online-Kurs, Kurs, Ethik, Einführung, Lernmaterial, Unterrichtsmaterial"

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
    @page_title = "Warum sich mit Ethik befassen?"
    @page_description = "Warum sollte man sich mit Ethik befassen?"
    @page_keywords    = "Ethik, Einführung, Notwendigkeit, Warum, Wieso"

  end

  def structure
    @page_title = "Wie ist der Kurs aufgebaut?"
  end

  def set_group
    code = params[:code].to_s
    firstname = params[:firstname].to_s

    @account.update(code: code, firstname: firstname)
    head :ok
  end

  def group_overview
    code = params[:code].to_s

    @accounts = Account.where(code: code)
  end

  def register

  end
end
