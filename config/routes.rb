Rails.application.routes.draw do
	resources :contacts do
		resources :emails
		resources :phones
	end
  get '/' => 'site#home'
  get '/search' => 'contacts#search'
end
