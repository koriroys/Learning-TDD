require "user"
describe User do
  it "starts with no users" do
    User.list.should be_empty
    User.list.empty?.should == true
  end
  
end

describe User, "with users" do
  before(:all) do
    User.list << User.new("Username", "password")
    User.list << User.new("Username2", "password2")
  end

  it "has users" do
    User.list.size.should == 2
  end
  
  it "authenticates a user who is on the list" do
    User.authenticate("Username2", "password2").should == true
  end
  
  it "fails to authenticate a user with a bad password" do
    User.authenticate("Username2", "badpass").should == false
  end
  
  it "fails to authenticate a user with a bad username" do
    User.authenticate("badusername", "password").should == false
  end
end