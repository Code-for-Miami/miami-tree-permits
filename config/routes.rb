Rails.application.routes.draw do

  get 'indexpage/index'

  resources :city_sources
  resources :permits
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
