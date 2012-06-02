class Friend < Struct.new(:name, :x, :y, :friends)
end
describe "Friends" do
  it "should have a name, latitude and longitude" do
    @friend = Friend.new("jonatas",20,12)
  end
  it "should accept a list of friends" do
    @friend.friends = [
      @marlon = Friend.new("Marlon", 21,13), 
      @jose = Friend.new("Jose",   22,13), 
      @maria = Friend.new("Maria",  18,13), 
      @joao = Friend.new("Joao",   15,13), 
    ]
  end
  
  it "should know what friend is more near"  do
     @friends.more_near.should == @marlon
  end
end

