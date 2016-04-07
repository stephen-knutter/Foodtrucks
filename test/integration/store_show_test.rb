require 'test_helper'

class StoreShowTestTest < ActionDispatch::IntegrationTest
  def setup
    @store = stores(:beerco)
    @user = users(:steve)
    @rating = Rating.new(store_id: @store.id, user_id: @user.id, comment: "Some comment", rating: 5)
  end
  
  test "show page should display sign up page for non logged in users" do
    get store_path @store
    assert_template 'stores/show'
    assert_template 'stores/_sign_up'
  end
  
  test "show page should display new rating form for user" do
     log_in_as(@user)
     get store_path @store
     assert_template 'stores/_rate'
  end
  
  test "show page should display current rating for edit" do
    log_in_as(@user)
    post ratings_path, {store_id: @store.id,
                        user_id: @user.id, 
                        comment: "Some rating", 
                        rating: 5}
    assert_redirected_to @store
    follow_redirect!
    assert_template 'stores/_rated'
  end
  
  test "user should be able to edit rating" do
    log_in_as(@user)
    @rating.save
    comment = "New comment"
    rating = 4
    patch rating_path(@rating), {store_id: @rating.store_id, 
                                 user_id: @rating.user_id, 
                                 comment: comment, 
                                 rating: rating}
    assert_redirected_to @store
    follow_redirect!
    assert_template 'stores/_rated'
    @rating.reload
    assert_equal comment, @rating.comment
    assert_equal rating, @rating.rating
  end
end
