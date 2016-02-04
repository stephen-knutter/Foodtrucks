require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
    test "layout links" do
      get root_path
      assert_template 'info_pages/home'
      assert_select "a[href=?]", root_path, count: 2
      assert_select "a[href=?]", terms_path
      assert_select "a[href=?]", privacy_path
    end
end
