require "offset"
require "polygon"
include RXaal
if __FILE__ == $0
  offset = Offset.new
  polygon = Polygon.new
  offset.base_object= polygon
  puts offset.base_object
end