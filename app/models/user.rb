class User < ActiveRecord::Base 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :posts
  has_many :summoners
  accepts_nested_attributes_for :summoners

  def is_admin?
    return self.email == "admin@vt.edu" 
  end

  def to_s
    self.name.presence || self.email
  end
end
