module RXaal
  class Arrow < XaalElement
    
    attr_accessor_of_boolean :forward, :backward
    def initialize(doc, id = nil, elem_ns=nil)
      super(doc, id, elem_ns)
    end
    
    def xaal_serialize(parent)
      if forward != nil || backward != nil
        e = REXML::Element.new "arrow"
        parent.elements << e
        
        if forward != nil
          e.attributes["forward"] = forward
        end
        if backward != nil
          e.attributes["backward"] = backward
        end
      end
    end
  end
end