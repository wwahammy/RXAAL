module RXaal
  class Angle < GraphicPrim
    attr_accessor_of_class Integer, :total, :start
    
    def initialize(doc, id = nil, elem_ns=nil)
      super(doc, id, elem_ns)
    end
  end
end