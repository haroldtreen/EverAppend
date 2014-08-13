require 'rails_helper'

describe User do
	describe '.from_omniauth' do
		it 'finds existing users' do
			user = create(:user, uid: '1')
			expect(User.from_omniauth({ 'uid' => '1' })).to eq(user)
		end

		it 'creates new users' do
			auth_hash = OmniAuth::AuthHash.new(oauth_response)
			
			expect {
				User.from_omniauth(auth_hash)
			}.to change{ User.count }.by(1)
		end
	end
end
