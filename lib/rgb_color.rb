require "generic_color"
module RXaal
  class RGBColor < GenericColor
    attr_accessor_of_class Integer, :r, :g, :b
    def initialize(_r, _g, _b)
      super
      @r = _r
      @g = _g
      @b = _b
    end
    
    def xaal_serialize(parent)
      elem = Element.new "color"
      elem.attributes['r'] = r
      elem.attributes['g'] = g
      elem.attributes["b"] = b
      parent.elements << elem
    end
  end 
end