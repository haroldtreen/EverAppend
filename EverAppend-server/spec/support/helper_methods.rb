def oauth_response
{
	provider: 'evernote',
	uid: rand(10000),
	info: { nickname: Faker::Name.name.underscore, name: Faker::Name.name },
	credentials: { token: SecureRandom.hex }
}
end
