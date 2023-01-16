Rails.application.routes.draw do
 
 

  root 'customers#index'

   resources  :customers
   resources :categories
   resources  :products
   resources  :bejaks 
end
