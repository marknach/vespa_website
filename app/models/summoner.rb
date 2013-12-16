class Summoner < ActiveRecord::Base
  include RiotHelper
  belongs_to :user
  
end
