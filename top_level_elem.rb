module RXaal
  class TopLevelElem < XaalElement
    
    def initialize(doc, id = nil, elem_ns = nil)
      super(doc, id, elem_ns)
    end
    
    def superclass_serialize(e)
      super(e)
    end
  end
end