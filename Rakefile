require 'rspec/core/rake_task'
require 'cucumber/rake/task'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec
# 
# require 'rubygems'
# require 'cucumber'


Cucumber::Rake::Task.new(:run) do |task|
  task.cucumber_opts = ["features"]
end