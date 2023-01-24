class Product < ApplicationRecord
  belongs_to :category
  has_many :bejak_details,  dependent: :destroy
  has_many  :invoice_details,  dependent: :destroy
  has_many  :wastes,           dependent: :destroy
  has_many  :current_prices,  dependent: :destroy
end
