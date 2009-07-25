require "rubygems"
require "require_all"

require_all '*.rb'
if __FILE__ == $0
  circle = Circle.new
  circle.center=(Center.new(50,0))
  puts circle.center.xpos
end