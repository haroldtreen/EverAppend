class ApiController < ApplicationController

	def login
		render json: { you: 'win' }
	end
end