class PhotosController < ApplicationController
  before_action :logged_in_user, only: [:create,:update]
  
  def create
  end
  
  def update
  end
  
  private
    def photo_params
      params.permit(:store_id,:photo)
    end
end
