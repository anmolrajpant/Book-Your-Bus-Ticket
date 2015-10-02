json.array!(@buslists) do |buslist|
  json.extract! buslist, :id, :starting, :ending, :time, :busNo, :price
  json.url buslist_url(buslist, format: :json)
end
