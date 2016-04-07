require 'test_helper'

class StoresControllerTest < ActionController::TestCase
  def setup
    @store = stores(:beerco)
  end
  
  test "get store show page" do
    get :show, id: @store
    assert_response :success
  end
  
end
