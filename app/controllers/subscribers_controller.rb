class SubscribersController < ApplicationController
  before_action :authenticate_user!, only: [:destroy, :update, :edit, :index]

  def index
    if current_user.id == 1
      @subscribers = Subscriber.all
    else 
      @subscribers = "Get Subscribers to display"
    end 
  end


  def new
    @subscriber = Subscriber.new
  end 

  def create 
    @subscriber = Subscriber.new(category_params)
    @subscriber.user_id = current_user.id
    if @subscriber.save
      redirect_to subscribers_path 
    else 
      render 'new'
   end 
  end 


private 
  
  def category_params
   params.require(:subscriber).permit(:name, :encrypted_email, :user_id) 
  end 

end
