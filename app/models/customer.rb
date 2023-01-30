class Customer < ApplicationRecord
   has_many  :invoices,  dependent: :destroy
   paginates_per 5


   self.inheritance_column="not_sti"
   
   def self.search(search)
      if search
         where(["full_name LIKE ? ", "%#{search}%"])
      else   
        all.order(created_at: :desc)
      end 

   end
end
