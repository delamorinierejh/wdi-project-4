Rails.application.routes.draw do
  resources :bids
  scope :api do
    resources :users
    resources :auctions
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
  end
end
