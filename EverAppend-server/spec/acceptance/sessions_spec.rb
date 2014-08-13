require 'rails_helper'
require 'rspec_api_documentation/dsl'

resource 'Session' do

	before(:each) do
		@auth_hash = OmniAuth::AuthHash.new(oauth_response)
	end

	get '/auth/evernote/callback' do
		example 'Login as a new User' do
			allow_any_instance_of(SessionsController).to receive(:auth_hash).and_return(@auth_hash)
			expect {
				do_request
			}.to change{ User.count }.by(1)
		end

		example 'Login as a existing user' do
			@auth_hash = OmniAuth::AuthHash.new(oauth_response.merge(uid: 1));

			create(:user, uid: '1')
			
			allow_any_instance_of(SessionsController).to receive(:auth_hash).and_return(@auth_hash)

			expect{
				do_request
			}.to_not change{ User.count }
		end
	end
end
