require 'node_prim'
module RXaal
  class Polyline < NodePrim
    attr_accessor_of_class Integer, :depth
    attr_accessor_of_class Boolean, :closed
    def initialize(doc, id = nil)
      super(doc, id)
    end
    
    def xaal_serialize(parent)
      polyline = Element.new "polyline"
      parent << polyline
      superclass_serialize(polyline)
      
      depth_e = Element.new "depth"
      depth_e.text = depth
      polyline << depth_e
      
      closed_e = Element.new "closed"
      closed_e.text = closed
      polyline << closed
    end
  end
end