Calltracker::Application.routes.draw do
  resources :calls
  resources :users
  resources :sessions, only: [ :new, :destroy, :create ]

  root :to => 'calls#new'
end
