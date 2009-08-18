module RXaal
  class Font < XaalElement
    attr_accessor_of_class Integer, :size
    attr_accessor_of_class String, :family
    
    def initialize (doc, id = nil)
      super(doc, id, elem_ns)
    end
    
    def xaal_serialize(parent)
      if size != nil || family!= nil
        font = Element.new "font"
        if @size != nil
          font.attributes["size"] = @size
        end
        if @family != nil
          font.attributes["family"] = @family
        end
        font.attributes["id"] = @id
        parent.elements << font
      end
    end
  
  end
end