class Invoice < ApplicationRecord
  belongs_to :customer
  has_many  :invoice_details,  dependent: :destroy

    
  paginates_per 4

  self.inheritance_column="not_sti"

  def self.search(search)
     if search
        where([" CAST( date AS  text) LIKE ? ", "%#{search}%"])   
     else   
       all.order(created_at: :desc)
     end 
  end
end
