require 'rails_helper'
require 'rspec_api_documentation/dsl'

resource 'Login' do

	post '/api/login' do
		parameter :username, 'string', required: true
		parameter :password, 'string', required: true

		example 'Login to Evernote' do
			do_request

			expect(status: 200)
		end
	end
end
