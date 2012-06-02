# encoding: utf-8
require 'test_helper'

class FriendTest < ActiveSupport::TestCase
  fixtures :all
  setup do
     @me = Friend.first
  end
  test "should have a name, latitude and longitude" do
     assert_equal @me.name, "Jônatas Davi Paganini"
     assert_equal @me.x, 12.5
     assert_equal @me.y, 10.5
  end

  test "should have a list of friends" do
    assert_equal @me.friends.size, 3
  end
  test "should know the nearest friend" do 
    assert_equal @me.nearest_friend.name, "Maria da Costa"
  end
  test "should validate attributes and relationships" do
    anonymous = Friend.create
    assert anonymous.invalid?
    assert anonymous.errors[:name]
  end
end
