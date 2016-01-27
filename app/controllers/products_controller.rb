class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :destroy, :update, :edit] 

  def index
    @products = Product.all
  end 

  def new
   @product = Product.new
  end 

  def show
  end 

  def edit 
  end 

  def update
    if @product.update(product_params)
      redirect_to root_path
    else 
      render 'edit'
    end 
  end 

  def destroy
    @product.destroy
    redirect_to root_path
  end 

  def create 
   @product = Product.new(product_params)
   if @product.save
    redirect_to root_path 
  else 
    render 'new'
   end 
  end

private 
  def product_params
    params.require(:product).permit(:title, :description, :url) 
  end 

  def find_product
    @product = Product.find(params[:id])
  end  
end
