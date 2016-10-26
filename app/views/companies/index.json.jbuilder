json.array!(@companies) do |company|
  json.extract! company, :id, :cname, :stock
  json.url company_url(company, format: :json)
end
