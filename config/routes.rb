Rails.application.routes.draw do
  root 'customer#index'
   resources  :customer
end
