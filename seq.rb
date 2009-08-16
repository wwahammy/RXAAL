module RXaal
  class Seq < XaalElement
    attr_reader :pars
    #narrative does not do type checking currently
    attr_accessor :narrative
    
    def initialize(doc)
      super(doc)
      @pars = BoundArray.new(Par)
    end
    
    def add_op(op)
      p = Par.new(@doc)
      p.children
    end
    
    def xaal_serialize(parent)
      e = Element.new "seq"
      parent.elements << e
      
      if @narrative != nil
        n = Element.new "narrative"
        n.text=(@narrative)
        e.elements << n
      end
      
      pars.each { |p|
        p.xaal_serialize(e)
      }
      
      superclass_serialize(e)
    end
  end
end