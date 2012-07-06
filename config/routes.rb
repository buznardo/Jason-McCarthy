Jason::Application.routes.draw do
  
  resources :shoots do
    resources :photos, only: :create
  end
  # Need a seperate route for destroying photos which is
  # not nested underneath shoots.
  resources :photos, only: :destroy
  
  resources :users, only: [:new, :create]
  resources :sessions

  match '/info', :to => 'pages#info'
  
  get '/login' => 'sessions#new'
  delete '/logout' => 'sessions#destroy'

  # This will make a path called 'portfolio_path' which will
  # bring the user to the shoots index action.
  get '/work' => 'shoots#index', as: :portfolio
  
  root :to => 'shoots#index'
  
end
