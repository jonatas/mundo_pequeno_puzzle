class Checkout < ActiveRecord::Base
  belongs_to :place
  belongs_to :friend

  validates_associated :place
  validates_associated :friend
  delegate :x,:y, :to => :place
end
