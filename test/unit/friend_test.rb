require 'test_helper'

class FriendTest < ActiveSupport::TestCase
  test "should have a name, latitude and longitude" do
     @me = Friend.first
     assert_equal @me.name, "jonatas"
     assert_equal @me.x, 12
     assert_equal @me.y, 14
  end
end
