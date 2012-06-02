class Place < ActiveRecord::Base
  has_many :friends
  has_many :checkouts
  attr_accessible :name, :x, :y
  validates_numericality_of :x,:y, :greater_than => 0
end
