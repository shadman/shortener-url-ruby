Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	get '/' => 'shortener#index'
	get '/generate' => 'shortener#index'
	post '/generate' => 'shortener#generate'

	get '/:short_url' => 'shortener#access'

end
