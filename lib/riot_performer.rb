module RiotPerformer
  require 'net/http'
  require 'json'
  
  REGION = "na"
  API_KEY = "?api_key=#{ENV["RIOT_API_KEY"]}"
  BASE_URL = "http://prod.api.pvp.net%s#{API_KEY}"
  
  
  CHAMPION_URL = BASE_URL % ["/api/lol/#{REGION}/v1.1/champion"]
  GAME_URL = BASE_URL % ["/api/lol/#{REGION}/v1.1/game/by-summoner/%s/recent"]
  LEAGUE_URL = BASE_URL % ["/api/#{REGION}/v2.1/league/by-summoner/%s"]
  STATS_SUMMARY_URL = BASE_URL % ["/api/lol/#{REGION}/v1.1/stats/by-summoner/%s/summary"]
  RANKED_STATS_URL = BASE_URL % ["/api/lol/#{REGION}/v1.1/stats/by-summoner/%s/ranked"]
  MASTERIES_URL = BASE_URL % ["/api/lol/#{REGION}/v1.1/summoner/%s/masteries"]
  RUNES_URL = BASE_URL % ["/api/lol/#{REGION}/v1.1/summoner/%s/runes"]
  SUMMONER_BY_NAME_URL = BASE_URL % ["/api/lol/#{REGION}/v1.1/summoner/by-name/%s" ]
  SUMMONER_BY_ID_URL = BASE_URL % ["/api/lol/#{REGION}/v1.1/summoner/%s"]
  SUMMONER_NAMES_BY_ID_URL = BASE_URL % ["/api/lol/#{REGION}/v1.1/summoner/%s/name"]
  TEAM_URL = BASE_URL % ["/api/#{REGION}/v2.1/team/by-summoner/%s"]
  
  
  def get_game_info(summoner_id)
    JSON.parse(get_url( GAME_URL % [summoner_id] ))
  end

  def get_league_info(summoner_id)
    JSON.parse(get_url( LEAGUE_URL % [summoner_id] ))
  end

  def get_stats_summary(summoner_id)
    JSON.parse(get_url( STATS_SUMMARY_URL % [summoner_id] ))
  end

  def get_ranked_stats(summoner_id)
    JSON.parse(get_url( RANKED_STATS_URL % [summoner_id] ))
  end

  def get_masteries(summoner_id)
    JSON.parse(get_url( MASTERIES_URL % [summoner_id] ))
  end

  def get_runes(summoner_id)
    JSON.parse(get_url( RUNES_URL % [summoner_id] ))
  end

  def get_summoner_by_name(name)
    JSON.parse(get_url( SUMMONER_BY_NAME_URL % [name]))
  end 

  def get_summoner_by_id(summoner_id)
    JSON.parse(get_url( SUMMONER_BY_ID_URL % [summoner_i]))
  end 

  def get_summoner_names_by_id(summoner_id)
    JSON.parse(get_url( SUMMONER_NAMES_BY_ID_URL % [summoner_id]))
  end 

  def get_teams(summoner_id)
    JSON.parse(get_url( TEAMS_URL % [summoner_id]))
  end 

  private

  def get_url(url)
    puts url
    Net::HTTP.get(URI.parse(url))
  end
end
