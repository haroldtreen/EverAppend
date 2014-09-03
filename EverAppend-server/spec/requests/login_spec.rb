require 'rails_helper'

describe 'Login Spec' do
	it 'creates an evernote user' do
		OmniAuth.config.mock_auth[:evernote] = OmniAuth::AuthHash.new({
      provider: 'evernote',
      uid: '12345',
      info: { name: 'John Doe', nickname: 'jdoe' },
      credentials: { token: SecureRandom.hex }
    })

		get '/auth/evernote'
		expect(response).to redirect_to('/auth/evernote/callback')
		follow_redirect!

		expect(User.count).to eq(1)

		user = User.first
		expect(user.name).to eq('John Doe')
		expect(user.username).to eq('jdoe')
		expect(user.uid).to eq('12345')
	end

	it 'finds the evernote user' do
		user = create(:user)

		OmniAuth.config.mock_auth[:evernote] = OmniAuth::AuthHash.new({
      provider: 'evernote',
      uid: user.uid
    })

		get '/auth/evernote'
		expect{
			follow_redirect!
		}.to_not change{ User.count }

		expect(session[:token]).to eq(user.auth_token)
	end
end
