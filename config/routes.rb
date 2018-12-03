Rails.application.routes.draw do

  root 'home_page#show'
  get '/search', to: 'home_page#show'
  
  post '/search', to: 'home_page#search', as: 'find_movies'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
