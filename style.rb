module RXaal
  class Style < XaalElement
    include StyleMod
    attr_accessor_of_class Style, :uses
    style_attr_accessor_of_bool :forward_arrow, :backwards_arrow
    style_attr_accessor_of_class GenericColor, :color, :fill_color
    style_attr_accessor_of_class String, :stroke_type, :font_family
    style_attr_accessor_of_class Integer, :stroke_width, :font_size
    
    def initialize (doc, id = nil, uses_style = nil)      
      super(doc, id)
      @uses = uses_style
    end
  end
end