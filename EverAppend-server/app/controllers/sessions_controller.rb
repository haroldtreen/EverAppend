class SessionsController < ApplicationController
	def create
		@user = User.from_omniauth(auth_hash)
		session[:user_id] = @user.id
		session[:auth_token] = @user.auth_token

		render "#{Rails.root}/../EverAppend-client/dist/index.html"
	end

	def destroy
		session[:user_id] = nil
	end

	private

	def auth_hash
		env['omniauth.auth']
	end
end
