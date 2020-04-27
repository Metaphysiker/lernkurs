json.extract! newsletter, :id, :email, :purpose, :created_at, :updated_at
json.url newsletter_url(newsletter, format: :json)
