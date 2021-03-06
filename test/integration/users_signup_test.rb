require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, user: {name: "",
                              email: "me@eggs",
                              password: "ham",
                              password_confirmation: "sausage"}
    end
    assert_template 'users/new'
  end
  
  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post_via_redirect users_path, user: {name: "Meski",
                                          email: "meski@eggs.com",
                                          password: "ilikepizza",
                                          password_confirmation: "ilikepizza"}
    end
    assert_template 'users/show'
    assert is_logged_in?
  end
  
end
