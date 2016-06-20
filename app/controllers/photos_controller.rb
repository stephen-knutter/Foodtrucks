class PhotosController < ApplicationController
  before_action :logged_in_user, only: [:create,:destroy]
  
  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:success] = 'New photo added'
    else
      flash[:danger] = 'Error adding photo'
    end
    if @photo.store_id != 0
      redirect_to store_path(@photo.store_id)
    else
      #redirect_to user_path(@photo.user_id)
      redirect_to '/users/#{@photo.user_id}/photos'
    end
  end
  
  def destroy
  end
  
  private
    def photo_params
      params.require(:photo).permit(:store_id,:user_id,:photo)
    end
end
