Vespa::Application.routes.draw do 
  get "profile/show"
  devise_for :users
  mount Forem::Engine, :at => "/forums"  
  resources :events 
  resources :summoners
  resources :announcements
  get 'streams'  => 'streams#index'
  get 'pages/index'
  root 'pages#index'
end
