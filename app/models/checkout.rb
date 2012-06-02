class Checkout < ActiveRecord::Base
  belongs_to :place
  belongs_to :friend
  # attr_accessible :title, :body
end
