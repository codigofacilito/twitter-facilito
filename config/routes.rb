Rails.application.routes.draw do
  devise_for :users
  root "tweets#index"
  resources :retweets
  resources :hashtags
  resources :comments
  resources :tweets do
    get :retweet, on: :member 
  end

  resources :users do
    get :follow, on: :member
    get :unfollow, on: :member
  end
end
