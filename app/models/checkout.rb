class Checkout < ActiveRecord::Base
  belongs_to :place
  belongs_to :friend

  delegate :x,:y, :to => :place
end
