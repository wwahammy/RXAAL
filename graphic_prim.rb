require "rexml/element"
require "style"

module RXaal
  class GraphicPrim < XaalElement
    
    attr_accessor_of_class Boolean, :hidden
    attr_accessor_of_class Double, :opacity
    attr_accessor_of_class Style, :style
    def initialize(doc, id = nil)
      super(doc, id)
    end
    
    def superclass_serialize(element)
      element.attributes["hidden"] = hidden
      element.attributes["opacity"] = opacity
      style.xaal_serialize(element)
    end
  end
end