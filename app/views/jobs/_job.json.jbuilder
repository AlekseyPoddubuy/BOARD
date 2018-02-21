json.extract! job, :id, :title, :slug, :created_at, :updated_at
json.url job_url(job, format: :json)
