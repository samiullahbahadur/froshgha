class CustomersController < ApplicationController
  def index
    @customer= Customer.all
  end

  def new
    @customer = Customer.new
  end

   def create 

    @customer= Customer.new(customer_params)
     if @customer.save
      redirect_to customers_path
     else
      render 'new'
     end
    end


    def destroy
      @customer = Customer.find(params[:id])
      @customer.destroy
      redirect_to customers_path
  end

  private 

 def customer_params
  params.require(:customer).permit(:full_name, :address, :phone)
 end 

end
