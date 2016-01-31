class FreeproductsController < ApplicationController
  def gift1
    render :file => 'public/gifts/reseller/index.html', :status => :not_found, :layout => false
  end

  def gift2
    render :file => 'public/gifts/facebook/index.html', :status => :not_found, :layout => false
  end

  def gift3
    render :file => 'public/gifts/SpeedDating/index.html', :status => :not_found, :layout => false
  end

  def home
  end
end
