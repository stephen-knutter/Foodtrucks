class MapsController < ApplicationController
  
  def show
    @map = Map.friendly.find(params[:id])
    @stores = @map.stores
    #gon.stores = @stores
    gon.rabl
    
    respond_to do |format|
     format.html { render :show }
     format.js
    end
    
  end

end
