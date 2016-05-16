class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :set_up_gon
  after_filter :clear_gon
  protect_from_forgery
  include SessionsHelper
  
  def set_up_gon
    env['action_controller.instance'] = self
  end
  
  def clear_gon
    Thread.current['gon'] = nil
  end
  
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Must be logged in"
      redirect_to login_url
    end
  end
  
  def check_user_admin
    redirect_to root_url unless current_user.store_admin
  end
end
