module RXaal
  class Coordinate < XaalElement
    attr_accessor_of_class Integer, :xpos, :ypos
    def initialize(doc, xpos, ypos, id= nil)
      super(doc, id)
      self.xpos= xpos
      self.ypos= ypos
    end
    
    def xaal_serialize(parent)
      elem = Element.new "coordinate"
      elem.attributes["x"] = self.xpos
      elem.attributes["y"] = self.ypos
      elem.attributes["id"] = self.id
      parent.elements << elem
      
      superclass_serialize(elem)
    end
  end
end