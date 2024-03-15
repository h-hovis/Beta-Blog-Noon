Rails.application.routes.draw do
  post '/login', to: 'sessions#create'
  resources :blogs
  resources :users, only: [:create]
  resources :messages, only: [:index, :create]
end
