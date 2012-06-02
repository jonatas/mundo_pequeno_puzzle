# use lib/assets/distance
class Friend < ActiveRecord::Base
  attr_accessible :name
  has_many :checkouts

  include Distance

  def x
    checkouts.last.x
  end
  def y
    checkouts.last.y
  end

  def nearest_friend
    more_near friends
  end
end

