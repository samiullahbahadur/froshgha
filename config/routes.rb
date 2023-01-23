Rails.application.routes.draw do
  root 'customers#index'
  get 'signup'=> 'users#new'
  resources :users, except: [:new] 


   resources :customers
   resources :categories
   resources  :products
   resources  :bejaks 
   resources  :bejak_details
   resources  :invoices
   resources  :invoice_details
   resources  :wastes
   resources  :current_prices
   resources  :expenditures

   get 'sign_in', to: "sessions#new"
 post 'sign_in', to: "sessions#create"
 delete 'logout' => 'sessions#destroy'
 
end
