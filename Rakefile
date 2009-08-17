require 'rake'
require 'rake/testtask'
require 'rake/gempackagetask'

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
  t.pattern = 'test/*_test.rb'
  t.verbose = true
end

spec = Gem::Specification.new do |s| 
  s.name = "RXaal"
  s.version = "0.0.1"
  s.author = "Eric Schultz"
  s.email = "wwahammy@gmail.com"
  s.platform = Gem::Platform::RUBY
  s.summary = "Some description"
  s.files = FileList["*/*"].to_a
  s.require_path = "lib"
  s.test_files = FileList["{test}/**/*test.rb"].to_a
  s.has_rdoc = true
  s.extra_rdoc_files = ["README", "COPYING"]
end

desc 'Gem.'
Rake::GemPackageTask.new(spec) do |pkg| 
  pkg.need_tar = true 
end 

