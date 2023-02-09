class WastesController < ApplicationController

  before_action :require_user_logged_in 
  before_action  :set_waste, only: [:edit, :update, :destroy]

  def index
    @waste= Waste.search(params[:search]).page(params[:page]) 
  end


  def edit 
  
  end

  def update 
    if @waste.update(waste_params)
      redirect_to wastes_path
      else
        render "edit"
      end
  end

  def new 
    @waste=Waste.new
 end


 def create 
    @bejak=Bejak.last
   @waste=Waste.new(waste_params)
    @waste.bejak= @bejak
   if  @waste.save
     
     redirect_to wastes_path
   else 
     render "new"
   end
 end 

  private 

   def waste_params
    params.require(:waste).permit(:details, :unit, :quantity, :unit_price, :product_id)
   end

   def set_waste
    @waste=Waste.find(params[:id])
   end
end
