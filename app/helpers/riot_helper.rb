module RiotHelper
  require 'net/http'
  
  REGION = "NA"
  BASE_URL = "http://prod.api.pvp.net#{url}#{API_KEY}"
  API_KEY = "?api_key=#{ENV["RIOT_API_KEY"]}"
  
  CHAMPION_URL = "/api/lol/#{REGION}/v1.1/champion"
  GAME_URL = "/api/lol/#{REGION}/v1.1/game/by-summoner/#{summoner_id}/recent"
  LEAGUE_URL = "/api/#{REGION}/v2.1/league/by-summoner/#{summoner_id}"
  STATS_SUMMARY_URL = "/api/lol/#{REGION}/v1.1/stats/by-summoner/#{summoner_id}/summary"
  RANKED_STATS_URL = "/api/lol/#{REGION}/v1.1/stats/by-summoner/#{summoner_id}/ranked"
  MASTERIES_URL = "/api/lol/#{REGION}/v1.1/summoner/#{summoner_id}/masteries"
  RUNES_URL = "/api/lol/#{REGION}/v1.1/summoner/#{summoner_id}/runes"
  SUMMONER_BY_NAME_URL = "/api/lol/#{REGION}/v1.1/summoner/by-name/#{name}"
  
  SUMMONER_BY_ID_URL = "/api/lol/#{REGION}/v1.1/summoner/#{summoner_id}"
  SUMMONER_NAMES_BY_ID_URL = "/api/lol/#{REGION}/v1.1/summoner/#{summoner_id}/name"
  TEAM_URL = "/api/#{REGION}/v2.1/team/by-summoner/#{summoner_id}"
  
  class Summoner 
    
  end
  def get_summoner_by_name(name)
    url = SUMMONER_BY_NAME_URL
    puts url
    #resp = Net::HTTP.get(URI.parse(url))
    #puts resp.inspect
  end 

end
