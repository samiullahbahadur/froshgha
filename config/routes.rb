Rails.application.routes.draw do
  get 'products/index'

  root 'customers#index'

   resources  :customers
   resources :categories
end
