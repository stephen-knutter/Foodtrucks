require 'test_helper'

class StoreHoursTest < ActionDispatch::IntegrationTest
  def setup
    @user
    @store = stores(:beerco)
    @hours = hours(:hours)
  end
  
  test "store admin should see edit button" do
    get store_path @store
    assert_template 'stores/_times'
  end
  
  
end
