require "circle"
if __FILE__ == $0
  circle = Circle.new
  circle.center=(Center.new(50,0))
  puts circle.center.xpos
end