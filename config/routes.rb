Rails.application.routes.draw do
  root 'sessions#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  # delete 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  get 'weather', to: 'weather#show'
  post 'weather', to: 'weather#show'
  delete 'logout', to: 'sessions#destroy', as: :logout
end
