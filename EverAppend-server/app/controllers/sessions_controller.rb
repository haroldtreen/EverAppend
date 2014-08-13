class SessionsController < ApplicationController
	def create
		@user = User.from_omniauth(auth_hash)
		session[:user_id] = @user.id

		render 'api/users/show.json'
	end

	def destroy
		session[:user_id] = nil
	end

	private

	def auth_hash
		env['omniauth.auth']
	end
end
