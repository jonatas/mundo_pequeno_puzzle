require 'test_helper'

class CheckoutTest < ActiveSupport::TestCase
   test "persist only valid friends" do
     checkout = Checkout.new
     checkout.friend = Friend.new
     checkout.place = Place.first
     assert checkout.invalid?
     assert checkout.errors[:place]
   end
end
