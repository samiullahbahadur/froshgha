class Expenditure < ApplicationRecord

    
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
