Rails.application.routes.draw do
  resources :game_ratings
  resources :games
  resources :article_ratings
  resources :articles
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
