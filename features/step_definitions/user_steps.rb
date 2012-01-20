require_relative '../../lib/user'
Given /^a user with username of "([^"]*)" and password of "([^"]*)"$/ do |username, password|
  User.list << User.new(username,password)
end

When /^I try to log in with username "([^"]*)" and password "([^"]*)"$/ do |username, password|
  @authentication_result = User.authenticate(username, password)
end

Then /^I should be authenticated$/ do
  @authentication_result.should be_true
end

Then /^I should not be authenticated$/ do
  @authentication_result.should be_false
end



Then /^I should have "([^"]*)" user$/ do |count|
  User.list.size.should == count.to_i
end
