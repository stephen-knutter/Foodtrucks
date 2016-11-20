require 'test_helper'

class InfoPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Foodtruck Maps"
  end

  test "should get privacy" do
    get :privacy
    assert_response :success
    assert_select "title", "Privacy | Foodtruck Maps"
  end

  test "should get terms" do
    get :terms
    assert_response :success
    assert_select "title", "Terms of Service | Foodtruck Maps"
  end

end
