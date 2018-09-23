json.extract! inquiry, :id, :hunter_id, :house_belongs_to, :query, :created_at, :updated_at
json.url inquiry_url(inquiry, format: :json)
