require 'test_helper'

class PlaceTest < ActiveSupport::TestCase
  test "use only valid coordinates" do
    place = Place.create(:name => "awesome inexistenT", :x => -1,:y => 10)
    assert place.invalid?
  end
end
