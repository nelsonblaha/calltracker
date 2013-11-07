Calltracker::Application.routes.draw do
  resources :reports

  resources :calls
  resources :users
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  resources :sessions
  root :to => 'calls#new'
end
