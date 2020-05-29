class StaticPagesController < ApplicationController
  def welcome
    @page_title = "Was ist Ethik? Finde es heraus in diesem interaktiven Lernkurs!"
    @page_description = "Was ist Ethik? Finde es heraus in diesem interaktiven Lernkurs! "
    @page_keywords    = "Lernkurs, Online-Kurs, Kurs, Ethik, Ethikkurs, Einführung,
                        Lernmaterial, Unterrichtsmaterial, Unterrichtsmaterialien,
                        Philosophie, interaktiv, Übung, Übungen, Schule, Studium"

    @courses = Course.all.order(:order)
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
    code = rand(100000..999999)

    taken_codes = Account.all.pluck(:code).uniq

    loop do
        break if !taken_codes.include?(code)
        code = rand(100000..999999)
    end

    @code = code

  end

  def feedback

  end

  def faq
    @faq = [
      ["Ist dieser Kurs kostenlos?",
      "Ja, dieser Kurs ist kostenlos."],
      ["Muss man sich für diesen Kurs registrieren oder anmelden?",
      "Nein, man muss sich weder registrieren noch anmelden."],
    ]
  end

  def showcase
  end

  def logic
    response.headers["X-FRAME-OPTIONS"] = "ALLOW-FROM https://www.philosophie.ch/"
    render
  end

  def application_form
    @course = params[:course]
    response.headers["X-FRAME-OPTIONS"] = "ALLOW-FROM https://www.philosophie.ch/"
    render
  end

  def login

  end

  def preparer
    #byebug
    if params[:search_inputs].present?
      @search_inputs = OpenStruct.new(params[:search_inputs])
    else
      @search_inputs = OpenStruct.new()
    end

    raw_html = @search_inputs[:text] ? @search_inputs[:text] : ""
    html = raw_html.encode('UTF-8', invalid: :replace, undef: :replace, replace: '', universal_newline: true).gsub(/\P{ASCII}/, '')
    doc = Nokogiri::HTML(html, nil, Encoding::UTF_8.to_s)
    doc = Nokogiri::HTML(@search_inputs[:text])
    doc.xpath('//@style').remove
    doc.xpath('//@script').remove
    body = doc.css('body')    # Or xpath, or whatever method you choose
    body_with_div = "<div class=\"text-justify\" style=\"font-size: large;\">#{body.inner_html}</div>"
    @result = body_with_div


    #html = raw_html.encode('UTF-8', invalid: :replace, undef: :replace, replace: '', universal_newline: true).gsub(/\P{ASCII}/, '')
    #parser = Nokogiri::HTML(html, nil, Encoding::UTF_8.to_s)
    #parser.xpath('//@script')&.remove
    #parser.xpath('//@style')&.remove
    #parser.xpath('//@text()').map(&:text).join(' ').squish
    #@result = parser.css('body').inner_html
  end


end
