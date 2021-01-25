Rails.application.routes.draw do
  resources :article_comments
  resources :game_ratings
  resources :games
  resources :article_ratings
  resources :articles
  resources :users

  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
