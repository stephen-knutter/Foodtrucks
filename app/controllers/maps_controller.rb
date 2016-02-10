class MapsController < ApplicationController
  
  def show
    @map = Map.friendly.find(params[:id])
    respond_to do |format|
     format.html
     format.js
    end
    
  end

end
