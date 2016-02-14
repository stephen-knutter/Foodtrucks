require 'test_helper'

class MapTest < ActiveSupport::TestCase
    
    def setup
      @map = Map.new(city: "denver", state: "CO", lat: 39.739122, lng: -104.990287)
    end
    
    test "map should be valid" do
      assert @map.valid?
    end
    
    test "missing map city should not be valid" do
      @map.city = "  "
      assert_not @map.valid?
    end
    
    test "missing map state should not be valid" do
      @map.state = "  "
      assert_not @map.valid?
    end
    
    test "missing latitude should not be valid" do
      @map.lat = "  "
      assert_not @map.valid?
    end
    
    test "missing longitude should not be valid" do
      @map.lng = "  "
      assert_not @map.valid?
    end
  
end
