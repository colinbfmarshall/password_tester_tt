json.extract! query, :id, :password, :result, :created_at, :updated_at
json.url query_url(query, format: :json)