class StoresController < ApplicationController
  #before_action :check_claim_status, only:[:new,:create,:edit,:update]
  before_action :logged_in_user, only: [:edit,:update]
  
  def show
    @store = Store.find(params[:id])
    unless @store
      redirect_to root_url
    end
    if current_user
      @rating = current_user.ratings.find_by(store_id: @store)
    end
    gon.rabl
  end
  
  def new
    @store = Store.new
  end
  
  def create
    @store = Store.find(params[:id])
  end
  
  def edit
    @store = Store.find(params[:id])
    @hour = Hour.new
  end
  
  def update
    @store = Store.find(params[:id])
    if @store.update_attributes(store_params)
      flash[:success] = 'Profile successfully updated'
    else
      flash[:danger] = 'Profile could not be updated'
    end
    redirect_to edit_store_path(@store)
  end
  
    private
     def store_params
       params.require(:store).permit(:name,:email,:address,:city,:state,:profile_pic)
     end
end
