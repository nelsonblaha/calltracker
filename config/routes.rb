Calltracker::Application.routes.draw do

  root :to => 'calls#new'

  resources :reports
  resources :calls
  resources :users
  resources :sessions

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"

  get "experimental" => "console#index"
end
