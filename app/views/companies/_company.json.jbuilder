json.extract! company, :id, :c_name, :website, :address, :size, :year, :revenue, :synopsis, :created_at, :updated_at
json.url company_url(company, format: :json)
