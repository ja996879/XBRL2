json.array!(@xbrltags) do |xbrltag|
  json.extract! xbrltag, :id, :tagname, :tagmean
  json.url xbrltag_url(xbrltag, format: :json)
end
