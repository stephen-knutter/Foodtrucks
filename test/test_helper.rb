ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/reporters'
Minitest::Reporters.use!

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  include ApplicationHelper

  # Add more helper methods to be used by all tests here...
  
  #same as [ logged_in? ] method in SessionsHelper wich is inaccessible by tests
  def is_logged_in?
    !session[:user_id].nil?
  end
  
  def log_in_as(user, options = {})
    password = options[:password] || 'hamsandwich'
    remember_me = options[:remember_me] || '1'
    if integration_test?
      post login_path, session: {email: user.email,
                                password: password,
                                remember_me: remember_me}
    else
      session[:user_id] = user.id
    end
  end
  
  private
    def integration_test?
      defined?(post_via_redirect) #method only available in integration tests
    end
end
