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
describe "Friends" do
  before :all do
    @me= Friend.new("jonatas",20,12)
  end
  it "should have a name, latitude and longitude" do
    @me.name.should == "jonatas"
    @me.latitude.should == 20
    @me.longitude.should == 12
  end
  it "should accept a list of friends" do
    @me.friends = [
      @marlon = Friend.new("Marlon", 21,13), 
      @jose = Friend.new("Jose",   22,13), 
      @maria = Friend.new("Maria",  18,13), 
      @joao = Friend.new("Joao",   15,13), 
    ]
  end
  it "should know what friend is more near"  do
    @me.more_near.should == @marlon
  end
end

