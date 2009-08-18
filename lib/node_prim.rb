require 'graphic_prim'
class NodePrim < GraphicPrim
  attr_reader :coordinates
  def initialize(doc, id = nil, elem_ns=nil)
    super(doc, id, elem_ns)
    @coordinates = BoundArray.new(Coordinate)
  end
  
  def superclass_serialize(element)
    super(element)
    coordinates.each {|c|
      c.xaal_serialize(element)
    }
  end
end