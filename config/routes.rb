Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get 'weather', to: 'weather#show'
  post 'weather', to: 'weather#show'
  # delete 'logout', to: 'sessions#destroy', as: :logout
end
