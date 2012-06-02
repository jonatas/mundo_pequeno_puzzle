require "friends_near"
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
      Friend.new("Jose",   22,13), 
      Friend.new("Marlon", 21,13), 
      Friend.new("Maria",  18,13), 
      Friend.new("Joao",   15,13), 
    ]
  end
  it "should know what friend is more near"  do
    @me.nearest_friend.name.should == "Marlon"
  end
end

