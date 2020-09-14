Rails.application.routes.draw do
  get 'brands/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :brands do
    resources :products
  end
  root 'brands#index'

end
