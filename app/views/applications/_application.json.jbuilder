json.extract! application, :id, :firstname, :lastname, :street, :city, :plz, :email, :telefon, :payment, :motivation, :expectation, :thoughts, :aboutme, :food, :created_at, :updated_at
json.url application_url(application, format: :json)
