Rails.application.routes.draw do
  resources :retweets
  resources :hashtags
  resources :comments
  resources :tweets
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
