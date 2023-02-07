class InvoiceDetailsController < ApplicationController

  before_action :require_user_logged_in 
  
  before_action :set_invoice_details, only: [:edit, :update, :destroy]

  def index
  @invoice_details=InvoiceDetail.search(params[:search]).page(params[:page]) 
  end

  def edit 
  end

  def update 
    if @invoice_details.update(invoice_details_params)
      redirect_to  invoice_details_path
      else
        render "edit"
      end
  end

 def new 
  @invoice_details = InvoiceDetail.new
end


def create
   @invoice=Invoice.last
   @invoice_details=InvoiceDetail.new(invoice_details_params) 
   @invoice_details.invoice=@invoice
    if @invoice_details.save 
    redirect_to  invoice_details_path
   else 
    render "new"
   end
end 



def destroy
  @invoice_details.destroy
  redirect_to invoice_details_path
end


  private  

   def invoice_details_params
    params.require(:invoice_detail).permit(:unit, :quantity, :unit_price, :discount, :product_id )
   end

   def set_invoice_details
    @invoice_details=InvoiceDetail.find(params[:id])
   end
end
