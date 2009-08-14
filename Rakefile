require 'rake'
require 'rake/testtask'

desc 'Default: run unit tests.'
task :default => :test

desc 'buildGenMod: build the general module'
task :buildGenMod do
  classes = Hash.new
  rbfiles = File.join(".", "*.rb")
  Dir.glob(rbfiles).each { |filename|
  puts filename
    File.open(filename, 'r') { |io|
      io.readlines.each {|line|
      puts line
        if (line =~ /\s*class\s+([A-Z]\w*)/)
          classes[$1.to_sym] = filename.sub(/\.rb/, "").sub(/\.\//, "");
        end
      }
    }
  }
 
 classes.each { |key, val|
  puts key.inspect + " = " + val
 }
end

desc 'Test.'
Rake::TestTask.new(:test) do |t|
  t.pattern = 'Test/*_test.rb'
  t.verbose = true
end
