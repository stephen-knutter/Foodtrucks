class StoresController < ApplicationController
  
  def show
    @store = Store.find(params[:id])
    unless @store 
      redirect_to root_url
    end
    gon.rabl
  end
  
  def new 
    
  end
  
  def create
      
  end
  
  def edit
    
  end
  
  def update
  end
  
    private
end
