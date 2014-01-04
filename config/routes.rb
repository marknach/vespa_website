Vespa::Application.routes.draw do 
  get "profile/show"
  devise_for :users
  
  resources :events 
  resources :summoners
  resources :posts
  get 'streams'  => 'streams#index'
  get 'pages/index'
  root 'pages#index'
end
