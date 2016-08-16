json.extract! pressrelease, :id, :title, :publish_at, :intro, :body, :created_at, :updated_at
json.url pressrelease_url(pressrelease, format: :json)