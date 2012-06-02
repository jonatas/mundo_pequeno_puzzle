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
      @jose = Friend.new("Jose",   22,13), 
      @marlon = Friend.new("Marlon", 21,13), 
      @maria = Friend.new("Maria",  18,13), 
      @joao = Friend.new("Joao",   15,13), 
    ]
  end
  it "should know what friend is more near"  do
    @me.more_near.should == @marlon
  end
end

