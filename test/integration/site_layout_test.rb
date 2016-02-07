require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
    test "layout links" do
      get root_path
      assert_template 'info_pages/home'
      assert_select "a[href=?]", root_path, count: 2
      assert_select "a[href=?]", terms_path
      assert_select "a[href=?]", privacy_path
      get signup_path
      assert_select "title", do_title("Sign Up")
    end
end
