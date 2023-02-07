class Customer < ApplicationRecord
   has_many  :invoices,  dependent: :destroy
   paginates_per 5


   self.inheritance_column="not_sti"
   
   def self.search( search)
      if search
         where(["full_name || address || phone LIKE ? ", "%#{search}%"])
      else   
        all.order(created_at: :desc)
      end 

   end

# def self.search(param)
#    to_send_back= (full_name_matches(param) + address_matches(param) + phone_matches(param)).uniq
#    return nil unless to_send_back
#    to_send_back

# end

# def self.full_name_matches(param)
#    matches('full_name', param)
# end

# def self.address_matches(param)
#    matches('address', param)
# end

# def self.phone_matches(param)
#    matches('phone', param)
# end
 
#  def self.matches(field_name, param)
#    if field_name && param
#            Customer.where("#{field_name} LIKE ? ", "%#{param}%")
#         else   
#           all.order(created_at: :desc)
#          end 
#  end

end
