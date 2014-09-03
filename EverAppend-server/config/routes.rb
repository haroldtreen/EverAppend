Rails.application.routes.draw do

	root 'home#root'

  namespace :api, defaults: { format: :json } do
  	resource :users, only: [:show]
  end
	get 'auth/evernote/callback', to: 'sessions#create'
end
