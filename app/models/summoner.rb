class Summoner < ActiveRecord::Base
  include RiotHelper
  belongs_to :user
  validates :name, presence: true
  validates :summonerLevel, :numericality => { :only_integer => true, :greater_than => 0, :less_than_or_equal_to => 30 }
  
end
