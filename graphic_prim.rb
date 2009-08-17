require "rexml/element"
require 'xaal_element'

module RXaal
  class GraphicPrim < XaalElement
    
    attr_accessor_of_boolean :hidden
    
    attr_accessor_of_class Float, :opacity
    attr_accessor_of_class Style, :style
    
    def initialize(doc, id = nil, elem_ns=nil)
      super(doc, id, elem_ns)
    end
    
    def superclass_serialize(element)
      super(element)
      element.attributes["hidden"] = hidden.to_s
      element.attributes["opacity"] = opacity
      style.xaal_serialize(element)
      
      
    end
  end
end