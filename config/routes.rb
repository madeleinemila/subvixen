Rails.application.routes.draw do
  root :to => 'videos#new'
  resources :videos, :only => [:new, :create, :show]
  get '/stage' => 'pages#stage'
end
