class CategoriesController < ApplicationController
 before_action :find_category, only: [:show, :destroy, :update, :edit] 
  def index
    @categories = Category.all
  end 

  def new
    @category = Category.new
  end 

  def create 
    @category = Category.new(category_params)
    @category.user_id = current_user.id
    if @category.save
      redirect_to categories_path 
    else 
    render 'new'
   end 
  end  

  def show
  end 

  def edit 
  end 

  def update
    if @pcategory.update(category_params)
      redirect_to categories_path 
    else 
      render 'edit'
    end 
  end 

  def destroy
    @category.destroy
    redirect_to categories_path 
  end 

private
  def category_params
    params.require(:category).permit(:name) 
  end 

  def find_category
    @category = Category.find(params[:id])
  end  
end
