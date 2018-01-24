Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :videos, :only => [:new, :create, :show, :index]
  resources :rigs, :only => [:new, :create, :show, :index]
  get '/rig' => 'pages#rig'
  get '/stage' => 'pages#stage'
  get '/about' => 'pages#about'
end
