module RiotHelper
  require 'net/http'
  REGION = "NA"
  BASE_URL = "http://prod.api.pvp.net"
  class Summoner 
    
  end
  def get_summoner_by_name(name)
    url = "/api/lol/#{REGION}/v1.1/summoner/by-name/#{name}?api_key=#{ENV["RIOT_API_KEY"]}"
    resp = Net::HTTP.get_response(URI.parse(url))
    puts resp.inspect
  end
  def test_var
    puts ENV["RIOT_API_KEY"]
  end

end
