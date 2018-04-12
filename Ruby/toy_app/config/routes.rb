Rails.application.routes.draw do
  resources :microposts
  resources :t_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 't_users#index'
end
