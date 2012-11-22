class User < ActiveRecord::Base
  attr_accessible :name, :password_digest, :email, :provider, :uid
  attr_accessible :password, :password_confirmation

  has_many :aas

  validates :name, presence: true#, uniqueness: true
  has_secure_password

  def self.create_with_omniauth(auth)
    create! do |user| 
      user.provider = auth["provider"] 
      user.uid = auth["uid"] 
      user.name = auth.info.nickname
      user.password_digest = Product_pass.rand_password
      #user.screen_name = auth.info.nickname
    end  
  end 

  class Product_pass
    def self.rand_password(length = 8)
      list = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
      list.sample(8).join
    end
  end
end
