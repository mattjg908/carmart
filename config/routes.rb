Carmart::Application.routes.draw do
  root :to => 'users#splash'
  resources :users, :only => [:index, :new, :create]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
end
