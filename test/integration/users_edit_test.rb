require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = users(:steve)
    @user_two = users(:wayne)
  end
  
  test "unsuccessful edit" do
    log_in_as(@user)
    get edit_user_path(@user)
    assert_template 'users/edit'
    patch user_path(@user), user: {name: "", 
                                   email: "",
                                   password: "ham",
                                   password_confirmation: "eggs"}
    assert_template 'users/edit'
  end
  
  test "successful edit with forwarding" do
    get edit_user_path(@user)
    log_in_as(@user)
    assert_redirected_to edit_user_path(@user)
    name = "Doug Smith"
    email = "dsmith@yahoo.com"
    patch user_path(@user), user: { name: name,
                                   email: email,
                                   password: "",
                                   password_confirmation: ""}
    assert_not flash.empty?
    assert_redirected_to @user
    @user.reload
    assert_equal name, @user.name
    assert_equal email, @user.email
  end
  
  test "redirect edit page when not logged in" do
    get edit_user_path(@user)
    assert_redirected_to login_path
    assert_not flash.empty?
  end
  
  test "redirect update action when not logged in" do
    patch user_path(@user)
    assert_redirected_to login_path
    assert_not flash.empty?
  end
  
  test "should redirect edit when wrong user" do
    log_in_as(@user_two)
    get edit_user_path(@user)
    assert flash.empty?
    assert_redirected_to root_url
  end
  
  test "should redirect update when wrong user" do
    log_in_as(@user_two)
    patch user_path(@user)
    assert flash.empty?
    assert_redirected_to root_url
  end
  
end
