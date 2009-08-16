module RXaal
  class Text < NodePrim
    attr_accessor_of_class Contents, :contents
    attr_accessor_of_class String, :alignment
    attr_accessor_of_class Integer
    attr_accessor_of_boolean :boxed
    
    def initialize
      super
    end
  
  
  def xaal_serialize(parent)
    text = Element.new "text"
    parent.elements << text
    
    if @alignment != nil
      e_align = Element.new "alignment"
      e_align.text = alignment
      text << e_align
    end
   
    if @boxed != nil
      e_boxed = Element.new "boxed"
      e_boxed.text = boxed.to_s
    end
    
    contents.xaal_serialize(text)
    
    superclass_serialize(text)
  end
  
  end
end