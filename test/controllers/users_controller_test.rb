require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end
  
   test "users index should redirect to login when not logged in" do
      get :index
      assert_redirected_to login_url
    end

end
