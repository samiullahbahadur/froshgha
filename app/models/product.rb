class Product < ApplicationRecord
  belongs_to :category
  has_many :bejak_details,  dependent: :destroy
  has_many  :invoice_details,  dependent: :destroy
  has_many  :wastes,           dependent: :destroy
  has_many  :current_prices,  dependent: :destroy
  
  paginates_per 4

  self.inheritance_column="not_sti"
  def self.search(search)
     if search
        where(["product_details LIKE ? ", "%#{search}%"])
      
     else   
       all.order(created_at: :desc)
     end 

  end
end
