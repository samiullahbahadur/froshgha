class CategoriesController < ApplicationController
  def index
    @category=Category.all 
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

    private 

    def category_params 

      params.require(:category).permit(:category_name)

    end 
end
