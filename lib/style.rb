module RXaal
  class Style < XaalElement
    include StyleMod, Serializable
    attr_accessor_of_class Style, :uses
    style_attr_accessor_of_bool :forward_arrow, :backwards_arrow
    attr_accessor :color, :fill_color
    style_attr_accessor_of_class Font, :font
    style_attr_accessor_of_class Stroke, :stroke
    
    def initialize (doc, id = nil, uses_style = nil)      
      super(doc, id)
      @uses = uses_style
    end
    
    def font_size
      if font != nil
        return font.size
      end
      return nil
    end
    
    def font_size=(_size)
      if @font == nil
        @font.new(@doc)
      end
      
      @font.size = _size
    end
    
    def font_family
      if font != nil
        return font.family
      end
      return nil
    end
    
    def font_family=(_fam)
      if @font == nil
        @font.new(@doc)
      end
      
      @font.family = _fam
    end
    
    def stroke_type
      if stroke != nil
        return stroke.type
      end
      return nil
    end
    
    def stroke_type=(_type)
      if @stroke == nil
        @stroke.new(@doc)
      end
      
      @stroke.type = _type
    end
    
    def stroke_width
       if stroke != nil
        return stroke.width
      end
      return nil
    end
    
    def stroke_width=(_width)
      if @stroke == nil
        @stroke.new(@doc)
      end
      
      @stroke.width = _width
    end
    
    # TODO: this doesn't really do anything with uses yet
    def xaal_serialize(parent)
      style = REXML::Element.new "style"
      parent.elements << style
      
      [:color, :fill_color, :font, :stroke].each { |c|
        t = self.send(c)
        if t != nil
          t.xaal_serialize(style)  
        end
        
      }
      
      superclass_serialize(style)
    end
  end
end