json.extract! reply, :id, :realtor_id, :inquiry_id, :response, :created_at, :updated_at
json.url reply_url(reply, format: :json)
