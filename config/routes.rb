Rails.application.routes.draw do
  resources :monthly_weathers, :only => [:index, :show]

  get 'periods/measure'
  get 'periods/result'

  #resources :weathers, :except => [:new, :delete, :edit]
  resources :weathers, :only => [:index, :show]

  resources :orbits
  resources :engines
  resources :rovers

  get 'mars_overview/mars_weather', to: 'mars_overview#mars_weather'
get 'mars_overview/insight_mission', to: 'mars_overview#insight_mission'
  get 'mars_overview/display', to: 'mars_overview#display'
root 'mars_overview#index'

get '*a', :to => 'errors#routing'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
