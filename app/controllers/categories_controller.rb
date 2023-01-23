class CategoriesController < ApplicationController
  before_action :require_user_logged_in 
  before_action :set_category, only: [:edit, :update, :destroy]

  def index
    @category=Category.all 
  end

  def edit 

  end
   
  def update
    
    if @category.update(category_params)
      redirect_to  categories_path
    else
      render 'edit'
    end
  end 

  def new 
    @category=Category.new
  end 
  

    def create 
      @category=Category.new(category_params)
      if @category.save 
        redirect_to categories_path
      else
        render 'new'
      end

    end 

    def destroy 
        
        @category.destroy
        redirect_to categories_path
    end 


    private 

    def category_params 
      params.require(:category).permit(:category_name)
    end 


    def set_category
      @category = Category.find(params[:id])
    end
  
end
