Rails.application.routes.draw do
  resources :discussioms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  devise_for :users, controllers: { registrations: 'registrations' }

end
