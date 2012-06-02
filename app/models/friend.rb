# use lib/assets/distance
class Friend < ActiveRecord::Base
  attr_accessible :name
  attr_accessor :friends
  has_many :checkouts

  include Distance

  def last_checkout
    checkouts.last
  end

  delegate :x,:y, :to => :last_checkout

  def nearest_friend
    @friends.delete_if{|friend| not friend.last_checkout}
    more_near @friends
  end
end

