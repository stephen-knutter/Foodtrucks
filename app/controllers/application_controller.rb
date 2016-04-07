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
end
