class Place < ActiveRecord::Base
  has_many :friends
  has_many :checkouts
  attr_accessible :name, :x, :y
end
