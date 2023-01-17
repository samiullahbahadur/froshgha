class Product < ApplicationRecord
  belongs_to :category
  has_many :bejak_details
  has_many  :invoice_details
  has_many  :wastes
  has_many  :current_prices
end
