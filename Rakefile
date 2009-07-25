require 'rake'
require 'rake/testtask'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the restful_authentication plugin.'
Rake::TestTask.new(:test) do |t|
  t.pattern = 'Test/*_test.rb'
  t.verbose = true
end
