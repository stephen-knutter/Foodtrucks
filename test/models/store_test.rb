require 'test_helper'

class StoreTest < ActiveSupport::TestCase
  def setup
    @store = Store.new(name:"Foodtruck", email:"hamneggs@gmail.com", 
                    password: "eggsandwich", password_confirmation: "eggsandwich", 
                    address: nil, city: "Denver", state: "Colorado", lat: 39.739089, lng: -104.990201, 
                    store_type: "truck")
  end
  
  test "store should be valid" do
      assert @store.valid?
   end
   
   test "store name should be present" do
      @store.name = "   "
      assert_not @store.valid?
   end
   
   test "store name should be less than 50 chars" do
    @store.name = "a" * 51
    assert_not @store.valid?
   end
   
   test "email should be present" do
    @store.email = "  "
    assert_not @store.valid?
   end
   
   test "email should be less than 255 chars" do
     @store.email = "a" * 246 + "@meski.com"
     assert_not @store.valid?
   end
   
   test "email should be downcase" do
     mixed_case_email = "WahBooHoo@Toas.Com"
     @store.email = mixed_case_email
     @store.save
     assert_equal mixed_case_email, @store.reload.email
   end
   
   test "email should accept valid addresses" do
    valid_addresses = %w[hamneggs@gmail.com frech@toast.com scrambled+eggs@jelly.org stawberry@jelly-belly.net]
    valid_addresses.each do |address| 
      @store.email = address
      assert @store.valid?, "#{address.inspect} should be valid"
    end
   end
   
   test "email should not accept invalid addresses" do
    invalid_addresses = %w[breck-pizza,org oj@crumbs_.com napkins@me_.com]
    invalid_addresses.each do |address|
      @store.email = address
      assert_not @store.valid?, "#{address.inspect} should not be valid"
    end
   end
   
   test "password should not be blank" do
    @store.password = @store.password_confirmation = "  "
    assert_not @store.valid?
   end
   
   test "password should be longer than 6 chars" do
    @store.password = @store.password_confirmation = "a" * 5
    assert_not @store.valid?
   end
   
   test "city should not be blank" do
    @store.city = "  "
    assert_not @store.valid?
   end
   
   test "city should not be more than 255 chars" do
    @store.city = "a" * 256
    assert_not @store.valid?
   end
   
   test "state should not be blank" do
     @store.state = "  "
     assert_not @store.valid?
    end

    test "state should not be more than 255 chars" do
     @store.state = "a" * 256
     assert_not @store.valid?
    end

    test "latitude should not be more than 11 chars" do
      @store.lat = 12.34567891011
      assert_not @store.valid?
    end

    test "longitude should not be more than 11 chars" do
      @store.lng = -112.34567891011
      assert_not @store.valid?
    end

    test "store type should not be more than 255 chars" do
      @store.store_type = "a" * 256
      assert_not @store.valid?
    end
end
