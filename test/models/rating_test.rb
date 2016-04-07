require 'test_helper'

class RatingTest < ActiveSupport::TestCase
  def setup
    @user = users(:steve)
    @store = stores(:beerco)
    @rating = Rating.new(store_id: @store.id, user_id: @user.id, comment: "Hey", rating: 5)
  end
  
  test "rating should be valid" do
    assert @rating.valid?
  end
  
  test "rating should contain store id" do
    @rating.store_id = " "
    assert_not @rating.valid?
  end
  
  test "rating should contain user id" do
    @rating.user_id = " "
    assert_not @rating.valid?
  end
  
  test "rating should contain comment" do
    @rating.comment = " "
    assert_not @rating.valid?
  end
  
  test "rating should contain a rating" do
    @rating.rating = " "
    assert_not @rating.valid?
  end
end
