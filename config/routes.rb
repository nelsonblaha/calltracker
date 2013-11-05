Calltracker::Application.routes.draw do
  resources :calls

  resources :users

  root :to => 'calls#index'
end
