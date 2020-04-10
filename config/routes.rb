Rails.application.routes.draw do
  get 'sessions/new'
  get 'home' => 'static_pages#home'
  get 'help'=> 'static_pages#help'
  get 'about'=>'static_pages#about'
   get 'contact'=>'static_pages#contact'
   get 'sign_up' => 'users#new'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'index' =>'users#index'
  get 'show' =>'users#show'
  get 'signup' => 'signup#signup'
  get 'application' => 'layouts#application'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
end
