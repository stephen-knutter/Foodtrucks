require 'test_helper'

class UserTest < ActiveSupport::TestCase
    
    #USER MODEL TESTS
    def setup
      @user = User.new(name: "User", email: "user@fake.com", 
                      password: "eggsandwich", password_confirmation: "eggsandwich")
    end
    
    test "should be valid" do
      assert @user.valid?
    end
    
    test "name should be present" do
      @user.name = "    "
      assert_not @user.valid?
    end
    
    test "email should be present" do
      @user.email = "    "
      assert_not @user.valid?
    end
    
    test "name should not be too long" do
      @user.name = "a" * 51
      assert_not @user.valid?
    end
    
    test "email should not be too long" do
      @user.email = "a" * 248 + "@example"
      assert_not @user.valid?
    end
    
    test "email validation should accept valid addresses" do
      valid_addresses = %w[user@example.com USER@eggs.be A_US-ER@ham.eggs.com first.last@toast.me ally+bob@bacon.cn]
      valid_addresses.each do |valid_address|
        @user.email = valid_address
        assert @user.valid?, "#{valid_address.inspect} should be valid"
      end
    end
    
    test "email validation should reject invalid addresses" do
      invalid_addresses = %w[user@eggs,com user_at_ham.com user.me@bacon. toast@hash_.com orange@juice+greens.org]
      invalid_addresses.each do |invalid_address|
        @user.email = invalid_address
        assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
      end
    end
    
    test "email addresses should be unique" do
      duplicate_user = @user.dup
      duplicate_user.email = @user.email.upcase
      @user.save
      assert_not duplicate_user.valid?
    end
    
    test "password should not be blank" do
      @user.password = @user.password_confirmation = " " * 6
      assert_not @user.valid?
    end
    
    test "password should be long than six characters" do
      @user.password = @user.password_confirmation = "a" * 5
      assert_not @user.valid? 
    end
end



















