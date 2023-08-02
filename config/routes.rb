Rails.application.routes.draw do
  devise_for :users
  root "tweets#index"
  resources :retweets
  resources :hashtags
  resources :comments
  resources :tweets do
    get :retweet, on: :member 
  end

  resources :users 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
