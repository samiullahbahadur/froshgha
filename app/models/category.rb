class Category < ApplicationRecord
    has_many :products,  dependent: :destroy

    paginates_per 2

    self.inheritance_column="not_sti"
    def self.search(search)
       if search
          where(["category_name LIKE ? ", "%#{search}%"])
       else   
         all.order(created_at: :desc)
       end 
 
    end
end
