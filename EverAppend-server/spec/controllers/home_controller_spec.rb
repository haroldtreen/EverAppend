require 'rails_helper'

describe HomeController, :type => :controller do
	render_views
	
	it 'is the root route' do
		expect(get: '/').to route_to(controller: 'home', action: 'root')
	end

	it 'renders a log in button' do
		get :root
		expect(response).to render_template(:root)
		expect(response.body).to match("Log In")
	end
end
