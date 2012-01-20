require "some_module/foo"

describe SomeModule::Foo do
  
  it "adds two numbers" do
    foo = SomeModule::Foo.new(1,2)
    foo.add_them.should == 3
  end
  
  it "adds two different numbers" do
    foo = SomeModule::Foo.new(5,6)
    foo.add_them.should == 11
  end
end