json.extract! country, :id, :title, :body, :description, :slug, :created_at, :updated_at
json.url country_url(country, format: :json)
