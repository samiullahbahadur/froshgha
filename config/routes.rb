Rails.application.routes.draw do
  get 'expenditures/index'
  get 'current_prices/index'


 
 

  root 'customers#index'

   resources  :customers
   resources :categories
   resources  :products
   resources  :bejaks 
   resources  :bejak_details
   resources  :invoices
   resources  :invoice_details
   resources  :wastes
   resources  :current_prices
   resources  :expenditures
end
