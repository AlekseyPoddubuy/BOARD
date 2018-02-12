json.extract! resume, :id, :title, :position, :city, :datetime, :skills, :description, :created_at, :updated_at
json.url resume_url(resume, format: :json)
