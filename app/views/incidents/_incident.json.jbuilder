json.extract! incident, :id, :user_id, :description, :status, :system, :main_case, :environment, :created_at, :updated_at
json.url incident_url(incident, format: :json)
