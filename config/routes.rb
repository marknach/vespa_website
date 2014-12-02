Vespa::Application.routes.draw do 
  get "profiles/show/:id" => 'profiles#show'
  devise_for :users
  resources :events 
  resources :summoners
  resources :announcements
  get 'streams'  => 'streams#index'
  get 'sponsors' => 'pages#sponsors'
  get 'gallery' => 'pages#gallery'
  root 'pages#home'
end
