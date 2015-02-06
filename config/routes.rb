Rails.application.routes.draw do
	
	resources :contacts do
		resources :emails
		resources :phones
	end

  get '/' => 'site#home'
  post '/search' => 'contacts#search'
end
