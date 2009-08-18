require 'node_prim'
module RXaal
  class Polyline < NodePrim
    attr_accessor_of_class Integer, :depth
    attr_accessor_of_boolean :closed
    
    def initialize(doc, id = nil, elem_ns=nil)
      super(doc, id, elem_ns)
    end
    
    def xaal_serialize(parent)
      polyline = Element.new "polyline"
      parent.elements << polyline
      superclass_serialize(polyline)
      
      if @depth != nil
        depth_e = Element.new "depth"
        depth_e.text = depth
        polyline << depth_e
      end
      
      if @closed != nil
        closed_e = Element.new "closed"
        closed_e.text = closed
        polyline.elements << closed_e
      end
    end
  end
end