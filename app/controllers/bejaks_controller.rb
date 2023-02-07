class BejaksController < ApplicationController

  before_action :require_user_logged_in 
  before_action :set_bejak, only: [:edit, :update]

  def index
    @bejak =Bejak.search(params[:search]).page(params[:page]) 
  end

  def edit 

  end 

  def update 
    if @bejak.update(bejak_params)
      redirect_to bejaks_path
    else
      render "edit"
    end

  end


  def new 
  @bejak =Bejak.new 
  end 

    def create 
      @bejak =Bejak.new( bejak_params)
      if @bejak.save 
        redirect_to bejaks_path
      else 
        render "new"
      end 
    end 

  private 

  def bejak_params 
    params.require(:bejak).permit(:details, :date)
    
  end 
  def set_bejak 
    @bejak=Bejak.find(params[:id])
  end 

end
