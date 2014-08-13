class User < ActiveRecord::Base

  def self.from_omniauth(omni_auth_hash)
  	uid = omni_auth_hash['uid'].to_s

  	where(uid: uid).first_or_create do |user|
  		user.username = omni_auth_hash['info']['nickname']
  		user.auth_token = omni_auth_hash['credentials']['token']
      user.uid = uid
      user.name = omni_auth_hash['info']['name']
  	end
  end
end
