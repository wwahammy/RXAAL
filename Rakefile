require 'rake'
require 'rake/testtask'
require 'rake/gempackagetask'
require 'rake/rdoctask'


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
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end


spec = Gem::Specification.load("./rxaal.gemspec")
desc 'Gem.'
Rake::GemPackageTask.new(spec) do |pkg| 
  pkg.need_tar = true 
end 

BASE_RDOC_OPTIONS = [
  '--line-numbers',
  '--main', 'README',
  '--title', 'Rake -- Ruby Make',
]

desc 'RDoc'
Rake::RDocTask.new("rdoc") do |rdoc|
  rdoc.rdoc_dir = 'html'
  rdoc.title    = "Rake -- Ruby Make"
  rdoc.options = BASE_RDOC_OPTIONS.dup 
    
  rdoc.rdoc_files.include('README', 'COPYING')
  rdoc.rdoc_files.include('lib/**/*.rb', 'doc/**/*.rdoc')
  rdoc.rdoc_files.exclude(/\bcontrib\b/)
end

