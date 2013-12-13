class User < ActiveRecord::Base
  include RiotHelper 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_many :summoners

  def is_admin?
    return self.email == "admin@vt.edu" 
  end
#  private
#  def update_summoner_info(summoner_id)
#    puts "updating #{summoner_id}
#  end
end
