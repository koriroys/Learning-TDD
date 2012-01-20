require 'test'

describe Test do
  it "prints test" do
    test = Test.new
    test.print_to_screen.should == "test"
  end
end