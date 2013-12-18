json.array!(@summoners) do |summoner|
  json.extract! summoner, :id
  json.url summoner_url(summoner, format: :json)
end
