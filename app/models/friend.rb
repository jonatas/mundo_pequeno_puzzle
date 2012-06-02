# use lib/distance
class Friend < ActiveRecord::Base
  validates_presence_of :name
  attr_accessible :name
  attr_accessor :friends
  has_many :checkouts

  def friends  
    Friend.all :conditions => ["id <> ?",self.read_attribute(:id)], :include => :checkouts
  end

  def at
   [last_checkout.place.name, "(x:", x, ", y:", y, ")"].join(" ")
  end

  include Distance

  def last_checkout
    checkouts.last
  end

  delegate :x,:y, :to => :last_checkout

  def nearest_friend
    _friends = friends
    _friends.delete_if{|friend| not friend.last_checkout}
    more_near _friends
  end
end

