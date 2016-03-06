# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

# Rails.application.load_tasks

ApiLawnMowingApp::Application.load_tasks

# require "bundler/gem_tasks"
# task :default => :spec

# desc 'run Rspec specs'
# task :spec do
#   sh 'rspec spec'
# end

require "rake/testtask"

Rake::TestTask.new do |t|
  t.pattern = "test/**/*_test.rb"
end

task default: :test