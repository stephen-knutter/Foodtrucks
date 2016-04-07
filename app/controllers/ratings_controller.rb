class RatingsController < ApplicationController
    
    def create
       @rating = Rating.new(rating_params)
       @store =  @rating.store
        if @rating.save
          flash[:success] = 'Rating successfully added!'
        else 
          flash[:danger] = 'Rating could not be saved'
        end
        redirect_to @store
    end
    
    def update
      @rating = Rating.find(params[:id])
      @store = @rating.store
      if @rating.update_attributes(rating_params)
        flash[:success] = 'Rating successfully updated!'
      else
        flash[:danger] = 'Rating could not be updated'
      end
      redirect_to @store
    end
    
     private
     def rating_params
       params.permit(:store_id,:user_id,:comment,:rating)
     end
end
