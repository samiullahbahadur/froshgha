class BejaksController < ApplicationController
  def index
    @bejak =Bejak.all 
  end


  private 

  def bejak_params 
    
  end 
end
