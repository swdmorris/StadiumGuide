json.array!(@cities) do |city|
  json.extract! city, :name, :state, :sportsness
  json.url city_url(city, format: :json)
end
