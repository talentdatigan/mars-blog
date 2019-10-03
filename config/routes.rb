Rails.application.routes.draw do
  
  get 'mars_weather/home'
  get 'mars_overview/mars_weather'
  
	root 'mars_overview#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
