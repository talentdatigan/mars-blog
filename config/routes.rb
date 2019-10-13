Rails.application.routes.draw do
  get 'periods/measure'
  get 'periods/result'
  resources :weathers
  resources :orbits
  resources :engines
  resources :rovers
get 'mars_overview/mars_weather', to: 'mars_overview#mars_weather'
get 'mars_overview/insight_mission', to: 'mars_overview#insight_mission'
root 'mars_overview#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
