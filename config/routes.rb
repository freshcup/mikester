Rails.application.routes.draw do
  devise_for :users
  root 'routines#random'
  resources :routines
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
