Rails.application.routes.draw do
  
  get 'users/new'
  root 'home_page#show'
  get '/search', to: 'home_page#show'

  resources :users
  
  # root to: 'home#index'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
