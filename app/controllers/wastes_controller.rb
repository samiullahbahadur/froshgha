class WastesController < ApplicationController

  before_action :require_user_logged_in 

  def index
    @waste= Waste.all
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
end
