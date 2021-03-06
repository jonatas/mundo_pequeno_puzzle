module Distance
  attr_accessor :x, :y

  def latitude; x end
  def longitude; y end

  def distance_from(other)
    x_distance = x - other.x
    y_distance = y - other.y
    x_distance *= x_distance 
    y_distance *= y_distance
    distance = Math.sqrt(x_distance + y_distance)
    distance
  end

  def more_near others
    others.sort_by do |other|
      distance_from(other)
    end.first
  end
end
