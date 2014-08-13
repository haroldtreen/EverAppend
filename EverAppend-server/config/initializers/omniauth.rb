Rails.application.config.middleware.use OmniAuth::Builder do
	provider :evernote, ENV['EVERNOTE_CONSUMER_KEY'], ENV['EVERNOTE_SECRET_KEY'], :client_options => { :site => ENV['EVERNOTE_BASE_URL'] }
end
