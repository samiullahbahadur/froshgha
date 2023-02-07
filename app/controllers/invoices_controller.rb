class InvoicesController < ApplicationController
  before_action :require_user_logged_in 
  
  before_action :set_invoice, only: [:edit, :update, :destroy]
  def index
    @invoice=Invoice.search(params[:search]).page(params[:page]) 
  end
  
  def edit 

  end 

  def update 
    if @invoice.update( invoice_params)
      redirect_to invoices_path
    else
      render "edit"
    end
  end


  def new 
    @invoice=Invoice.new
  end 

    def create 
      @invoice=Invoice.new(invoice_params)
      if @invoice.save
        redirect_to invoices_path
      else
        render "new"
      end
    end

    def destroy
      
      @invoice.destroy
      redirect_to invoices_path
  end

  private 

  def invoice_params 
    params.require(:invoice).permit(:customer_id, :date)
  end

  def set_invoice 
    @invoice=Invoice.find(params[:id])
  end
end
