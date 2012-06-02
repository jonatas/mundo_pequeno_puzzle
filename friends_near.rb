class Friend < Struct.new(:name, :x, :y, :friends)
  def latitude; x end
  def longitude; y end
  def distance_from(other_friend)
    x_distance = x - other_friend.x
    y_distance = y - other_friend.y
    Math.sqrt(x_distance ** x_distance + y_distance ** y_distance)
  end
  def more_near
    return if not @friends
    @friends.sort_by do |friend|
      distance_from(friend)
    end.first
  end
end
