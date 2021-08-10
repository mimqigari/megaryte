Rails.application.routes.draw do
  resources :addresses
  resources :get_accesses
  get 'genesis/index'
  root 'genesis#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
