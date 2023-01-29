class CustomersController < ApplicationController
  before_action :require_user_logged_in 

  before_action :set_customer, only: [:edit, :update, :destroy]

  def index
    @customer= Customer.search(params[:search]).page(params[:page])
    #
  end

  def edit 

  end
   
  def update
    
    if @customer.update(customer_params)
      redirect_to  customers_path
    else
      render 'edit'
    end
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
      @customer.destroy
      redirect_to customers_path
  end

  private 

 def customer_params
  params.require(:customer).permit(:full_name, :address, :phone)
 end 


 def set_customer 
  @customer = Customer.find(params[:id])

 end 

end
