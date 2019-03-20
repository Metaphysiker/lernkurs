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
    @accounts = Account.all.order(:created_at)
  end

  def course_overview
    @courses = Course.all.order(:order)
  end

  def textversion

    @course = Course.find(params[:id])

    #send_data render_to_string(pdf: "#{@course.title.parameterize}",
    #                          template: "/static_pages/textversion.html.erb",
    #                          layout: "/layouts/pdf_layout.html.erb",
    #                          dpi: 75),
    #                          filename: "#{@course.title.parameterize}.pdf"

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

  def check_group
    code = params[:code].to_s

    taken_abbreviations = Account.all.pluck(:code).uniq

    data = taken_abbreviations.include?(code).to_s

    render :json => data, :status => :ok
  end

  def group_overview
    @code = params[:code]

    @accounts = Account.where(code: @code)
  end

  def register
    @code = params[:code]
  end

  def klasse

  end

  def feedback

  end

  def faq
    @faq = [
      ["Ist dieser Kurs kostenlos?",
      "Ja, dieser Kurs ist kostenlos."],
      ["Muss man sich für diesen Kurs registrieren oder anmelden?",
      "Nein, man muss sich weder registrieren noch anmelden."],
      ["An wen richtet sich dieser Kurs?",
      "Dieser Kurs richtet sich an alle, die sich zum ersten Mal mit Ethik beschäftigen."],
      ["Ich bin eine Lehrperson. Kann ich den Kurs für meine Schulkinder brauchen?",
        "Ja. Mit Hilfe der Klassenfunktion kann man den Fortschritt und Punktestand der Schulkinder beobachten.
        Weitere Informationen: Link"
      ],
      ["Ich habe Schwierigkeiten. Wo bekomme ich Hilfe?",
      "e-Mail schreiben an: sandro.raess@philosophie.ch"],

    ]
  end
end
