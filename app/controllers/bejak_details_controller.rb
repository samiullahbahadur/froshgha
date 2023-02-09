class BejakDetailsController < ApplicationController
  before_action :require_user_logged_in 

  before_action  :set_bejak_details, only: [:edit, :update, :destroy]
  def index
    @bejak_details = BejakDetail.search(params[:search]).page(params[:page]) 
  end

  def edit 
  end

  def update 
    if @bejak_details.update(bejak_details_params)
      redirect_to  bejak_details_path
      else
        render "edit"
      end
  end


  def new 
     @bejak_details=BejakDetail.new
  end

  def create 
     @bejak=Bejak.last
    @bejak_details=BejakDetail.new(bejak_details_params)
     @bejak_details.bejak= @bejak
    if  @bejak_details.save
      
      redirect_to bejak_details_path
    else 
      render "new"
    end
  end 
  
def destroy
  @bejak_details.destroy
  redirect_to bejak_details_path
end

  private 

  def bejak_details_params 
    params.permit(:details, :unit, :quantity, :unit_price, :product_id)
  end 

  def set_bejak_details
    @bejak_details=BejakDetail.find(params[:id])
  end
end
