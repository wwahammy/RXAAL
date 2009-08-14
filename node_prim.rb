require 'graphic_prim'
class NodePrim < GraphicPrim
  attr_reader :coordinates
  def initialize(doc, id = nil)
    super(doc, id)
    @coordinates = Array.new
  end
  
  def superclass_serialize(element)
    super(element)
    coordinates.each {|c|
      c.xaal_serialize(element)
    }
  end
end