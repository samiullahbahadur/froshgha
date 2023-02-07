class ExpendituresController < ApplicationController
  before_action :require_user_logged_in 

  before_action  :set_exp, only:[:edit, :update, :destroy]

  def index
    @expenditure=Expenditure.search(params[:search]).page(params[:page]) 
  end
   
  def edit 
  end
   
  def update
   if @expenditure.update(exp_params)
    redirect_to expenditures_path
   else
    render "edit"
   end
  end

  def new 
    @expenditure=Expenditure.new
  end
   
  def create
    @expenditure=Expenditure.new(exp_params)
    if @expenditure.save
      redirect_to expenditures_path
    else
      render "new"
    end
  end

  def destroy
    @expenditure.destroy
    redirect_to expenditures_path
  end

  private 

   def exp_params
    params.require(:expenditure).permit(:description, :amount, :date)
   end

   def set_exp
    @expenditure=Expenditure.find(params[:id])
   end
end
