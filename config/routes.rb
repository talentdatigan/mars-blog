Rails.application.routes.draw do
  resources :weathers
  resources :rovers
  resources :monthly_weathers
  resources :engines
  get 'mars_overview/index'
  get 'mars_overview/mars_weather', to: 'mars_overview#mars_weather'
  root 'mars_overview#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
