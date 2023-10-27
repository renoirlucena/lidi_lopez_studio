json.extract! child_session, :id, :name, :description, :price, :created_at, :updated_at
json.url child_session_url(child_session, format: :json)
