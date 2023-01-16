class ProductsController < ApplicationController

  def index
    @category = Category.all 
    @product=Product.joins(:category)
     
   
  
  end

end
