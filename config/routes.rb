Rails.application.routes.draw do

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :quotes
  get '/random', to: 'quotes#random'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
