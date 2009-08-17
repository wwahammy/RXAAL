module RXaal
  class Coordinate < XaalElement
    attr_accessor :xpos, :ypos
    def initialize(doc, xpos, ypos, id= nil, elem_ns=nil)
      super(doc, id, elem_ns)
      @xpos= xpos
      @ypos= ypos
    end
    
    def xaal_serialize(parent)
      elem = Element.new "coordinate"
      elem.attributes["x"] = @xpos.to_s
      elem.attributes["y"] = @ypos.to_s
      elem.attributes["id"] = self.id
      parent.elements << elem
      
      superclass_serialize(elem)
    end
  end
end