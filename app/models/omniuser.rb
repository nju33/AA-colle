class Omniuser < ActiveRecord::Base
  attr_accessible :name, :provider, :screen_name, :uid
  
  def self.create_with_omniauth(auth)
    create! do |omniuser| 
      omniuser.provider = auth["provider"] 
      omniuser.uid = auth["uid"] 
      omniuser.name = auth.info.name
      omniuser.screen_name = auth.info.nickname
    end  
  end 

end
