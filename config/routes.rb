Carmart::Application.routes.draw do
  root :to => 'users#splash'
  resources :users
end
