class CategoriesController < ApplicationController
 before_action :find_category, only: [:show, :destroy, :update, :edit] 
  before_action :authenticate_user!, only: [:destroy, :update, :edit, :new, :create ]
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
    @products = Product.all.find_all {|c| c.category_id == @category.id}
    # binding.pry
  end 

  def edit 
  end 

  def update
    if @category.update(category_params)
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
    params.require(:category).permit(:name, :category_image) 
  end 

  def find_category
    @category = Category.find(params[:id])
  end  
end
