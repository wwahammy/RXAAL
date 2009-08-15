module RXaal
  class Stroke < XaalElement
    include Serializable
    
    attr_accessor_of_class String, :type
    attr_accessor_of_class Integer, :width
    
    def initialize(doc, id = nil)
      super(doc, id)
    end
    
    def xaal_serialize(parent)
      if (@type != nil || @width != nil)
        e = REXML::Element.new "stroke"
        parent.elements << e
        
        if @type != nil
          e.attributes["type"] = @type
        end
        if @width != nil
          e.attributes["width"] = @width
        end
        
      end
    end
  end
end