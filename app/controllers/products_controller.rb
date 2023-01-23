class ProductsController < ApplicationController
  before_action :require_user_logged_in 
  
  before_action :set_product, only: [:edit, :update, :destroy]

  def index

    @product=Product.all
     
  end

  def edit 
  
  end 

  def update 
   
   if @product.update(product_params)
    redirect_to products_path
  else
    render 'edit'
  end
end 
  
  def new 
    @product=Product.new 
  end 
   def create 

     @product=Product.new(product_params)
 
     if @product.save
      redirect_to products_path
      else
        render "new"
      end
   end 

   
   def destroy
      
    @product.destroy
    redirect_to products_path
end

  private 

  def product_params 
    params.require(:product).permit(:category_id, :product_details)

  end 

  def set_product 
    @product =Product.find(params[:id])
  end 

end
