module RiotHelper
  require 'net/http'
  
  REGION = "na"
  API_KEY = "?api_key=#{ENV["RIOT_API_KEY"]}"
  BASE_URL = "http://prod.api.pvp.net%s#{API_KEY}"
  
  
  CHAMPION_URL = "/api/lol/#{REGION}/v1.1/champion"
  GAME_URL = "/api/lol/#{REGION}/v1.1/game/by-summoner/%s/recent"
  LEAGUE_URL = BASE_URL % ["/api/#{REGION}/v2.1/league/by-summoner/%s"]
  STATS_SUMMARY_URL = "/api/lol/#{REGION}/v1.1/stats/by-summoner/%s/summary"
  RANKED_STATS_URL = "/api/lol/#{REGION}/v1.1/stats/by-summoner/%s/ranked"
  MASTERIES_URL = "/api/lol/#{REGION}/v1.1/summoner/%s/masteries"
  RUNES_URL = "/api/lol/#{REGION}/v1.1/summoner/%s/runes"
  SUMMONER_BY_NAME_URL = "/api/lol/#{REGION}/v1.1/summoner/by-name/%s" 
  SUMMONER_BY_ID_URL = "/api/lol/#{REGION}/v1.1/summoner/%s"
  SUMMONER_NAMES_BY_ID_URL = "/api/lol/#{REGION}/v1.1/summoner/%s/name"
  TEAM_URL = "/api/#{REGION}/v2.1/team/by-summoner/%s"
  
  class Summoner 
    
  end
  
  def get_league_info(summoner_id)
    url = LEAGUE_URL % [summoner_id]
    puts url
  end
  
  def get_summoner_by_name(name)
    url =BASE_URL % [SUMMONER_BY_NAME_URL % [name]]
    puts url
    resp = Net::HTTP.get(URI.parse(url))
    puts resp.inspect
  end 

end
