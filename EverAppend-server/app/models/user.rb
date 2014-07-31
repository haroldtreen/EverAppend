class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:evernote]


  def self.from_omniauth(omni_auth_hash)
  	name = omni_auth_hash['info']['nickname']
  	token = omni_auth_hash['credentials']['token']

  	where(username: name).first_or_create do |user|
  		user.username = name
  		user.password = Devise.friendly_token[0,20]
  		user.auth_token = token
  	end
  end
end
