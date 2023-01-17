class CurrentPricesController < ApplicationController
  before_action  :set_price, only:[:edit, :update, :destroy]
  def index
    @current_price=CurrentPrice.all 
  end

   def edit
   end

   def update
    if @current_price.update(c_pice_params)
      redirect_to current_prices_path
    else
      render "edit"
    end 
  end


  def new 
    @current_price=CurrentPrice.new 
  end

  def create 
    @current_price=CurrentPrice.new(c_pice_params)
    if @current_price.save
      redirect_to current_prices_path
    else
      render "new"
    end
  end

    def destroy 
      @current_price.destroy
      redirect_to current_prices_path
    end

  private 
  def c_pice_params
    params.require(:current_price).permit(:product_id, :price)
  end 
    def set_price
      @current_price=CurrentPrice.find(params[:id])
    end
end
